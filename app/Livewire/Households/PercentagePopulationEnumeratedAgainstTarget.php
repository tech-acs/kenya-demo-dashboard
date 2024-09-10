<?php

namespace App\Livewire\Households;

use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\Chart;
use Illuminate\Support\Collection;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class PercentagePopulationEnumeratedAgainstTarget extends Chart
{
    public function getData(string $filterPath): Collection
    {
        return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
            ->select(["SUM(total_household_members) AS total"])
            ->from(['housing_rec'])
            ->groupBy(['area_code'])
            ->lastlyAreaLeftJoinData(referenceValueToInclude: 'population')
            ->get()
            ->map(function ($item) {
                $item->proportion = Number::format(safeDivide($item->total, $item->ref_value) * 100, 1);
                return $item;
            });
    }
}
