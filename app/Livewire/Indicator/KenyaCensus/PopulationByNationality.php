<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class PopulationByNationality extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select([
                    'COUNT(*) AS total',
                    'SUM(CASE WHEN P16_OPTION = 1 THEN 1 ELSE 0 END) AS kenyan',
                    'SUM(CASE WHEN P16_OPTION = 2 THEN 1 ELSE 0 END) AS african',
                    'SUM(CASE WHEN P16_OPTION NOT IN (1, 2) OR P16_OPTION IS NULL THEN 1 ELSE 0 END) AS other',
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
