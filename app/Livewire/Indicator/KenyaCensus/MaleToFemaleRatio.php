<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class MaleToFemaleRatio extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select([
                    'SUM(CASE WHEN P11 = 1 THEN 1 ELSE 0 END) AS males',
                    'SUM(CASE WHEN P11 = 2 THEN 1 ELSE 0 END) AS females',
                ])
                ->from(['pop_rec'])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData()
                ->get()
                ->map(fn ($row) => tap($row, fn ($r) => $r->sex_ratio = Number::format(safeDivide($r->males, $r->females) * 100, 1)));
        } catch (\Exception $e) {
            return collect();
        }
    }
}
