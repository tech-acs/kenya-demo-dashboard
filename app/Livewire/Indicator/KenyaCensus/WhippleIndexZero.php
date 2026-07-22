<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class WhippleIndexZero extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select([
                    'SUM(CASE WHEN P12 BETWEEN 23 AND 62 AND P12 MOD 10 = 0 THEN 1 ELSE 0 END) AS ages_ending_0',
                    'SUM(CASE WHEN P12 BETWEEN 23 AND 62 THEN 1 ELSE 0 END) AS total_23_62',
                ])
                ->from(['pop_rec'])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData()
                ->get()
                ->map(fn ($row) => tap($row, fn ($r) => $r->whipple_index = Number::format(safeDivide($r->ages_ending_0, $r->total_23_62 / 10) * 100, 1)));
        } catch (\Exception $e) {
            return collect();
        }
    }
}
