<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class CrudeDeathRate extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select([
                    'SUM(COALESCE(H11, 0)) AS deaths',
                    'SUM(COALESCE(TOTAL_HOUSEHOLD_MEMBERS, 0)) AS population',
                ])
                ->from(['housing_rec'])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData()
                ->get()
                ->map(fn ($row) => tap($row, fn ($r) => $r->crude_death_rate = Number::format(safeDivide($r->deaths, $r->population) * 1000, 1)));
        } catch (\Exception $e) {
            return collect();
        }
    }
}
