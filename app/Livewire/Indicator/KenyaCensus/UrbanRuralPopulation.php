<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class UrbanRuralPopulation extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select([
                    'SUM(CASE WHEN EA_TYPE = 2 THEN 1 ELSE 0 END) AS urban',
                    'SUM(CASE WHEN EA_TYPE = 1 THEN 1 ELSE 0 END) AS rural',
                ])
                ->from(['pop_rec'])
                ->where(["HH_KEEP_ROW = 1"])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData()
                ->get();
        } catch (\Exception $e) {
            return collect();
        }
    }
}
