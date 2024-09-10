<?php

namespace App\Livewire\Households;

use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\Chart;
use Illuminate\Support\Collection;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class AverageHouseholdSize extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
            ->select([
                'SUM(total_household_members) AS population',
                'COUNT(*) AS households'
            ])
            ->from(['housing_rec'])
            ->groupBy(['area_code'])
            ->lastlyAreaLeftJoinData()
            ->get()
            ->map(function ($i) {
                $i->average = Number::format(safeDivide($i->population, $i->households), 1);
                return $i;
            });
    }
}
