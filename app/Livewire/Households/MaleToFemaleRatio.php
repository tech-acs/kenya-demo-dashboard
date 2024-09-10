<?php

namespace App\Livewire\Households;

use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\Chart;
use Illuminate\Support\Collection;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class MaleToFemaleRatio extends Chart
{
    public function getData(string $filterPath): Collection
    {
        return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
            ->select(["SUM(total_number_of_males) AS males", "SUM(total_number_of_females) AS females"])
            ->from(['housing_rec'])
            ->groupBy(['area_code'])
            ->lastlyAreaLeftJoinData()
            ->get()
            ->map(function ($item) {
                $item->ratio = Number::format(safeDivide($item->males, $item->females) * 100, 1);
                return $item;
            });
    }
}
