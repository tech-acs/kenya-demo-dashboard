<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class PopulationByBroadAgeGroup extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select([
                    'COUNT(*) AS total',
                    'SUM(CASE WHEN P12 < 15 THEN 1 ELSE 0 END) AS children',
                    'SUM(CASE WHEN P12 >= 15 AND P12 < 65 THEN 1 ELSE 0 END) AS adults',
                    'SUM(CASE WHEN P12 >= 65 THEN 1 ELSE 0 END) AS elderly',
                ])
                ->from(['pop_rec'])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData()
                ->get();
        } catch (\Exception $e) {
            return collect();
        }
    }
}
