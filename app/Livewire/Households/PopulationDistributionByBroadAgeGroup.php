<?php

namespace App\Livewire\Households;

use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\Chart;
use Illuminate\Support\Collection;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class PopulationDistributionByBroadAgeGroup extends Chart
{
    public function getData(string $filterPath): Collection
    {
        return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
            ->select([
                'COUNT(*) AS total',
                'SUM(CASE WHEN p12 < 15 THEN 1 ELSE 0 END) AS less_than_15',
                'SUM(CASE WHEN p12 >= 15 AND p12 < 65 THEN 1 ELSE 0 END) AS between_15_and_65',
                'SUM(CASE WHEN p12 >= 65 THEN 1 ELSE 0 END) AS above_and_65'
            ])
            ->from(['pop_rec'])
            ->groupBy(['area_code'])
            ->lastlyAreaLeftJoinData()
            ->get()
            ->map(function ($item) {
                $item->less_than_15_percentage = Number::format(safeDivide($item->less_than_15, $item->total) * 100, 1);
                $item->between_15_and_65_percentage = Number::format(safeDivide($item->between_15_and_65, $item->total) * 100, 1);
                $item->above_and_65_percentage = Number::format(safeDivide($item->above_and_65, $item->total) * 100, 1);
                return $item;
            });
    }
}
