<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class PopulationCount extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select(['SUM(COALESCE(TOTAL_HOUSEHOLD_MEMBERS, 0)) AS total'])
                ->from(['housing_rec'])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData()
                ->get();
        } catch (\Exception $e) {
            return collect();
        }
    }
}
