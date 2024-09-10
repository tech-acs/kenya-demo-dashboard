<?php

namespace App\Livewire\Households;

use Uneca\Chimera\Livewire\Chart;
use Illuminate\Support\Collection;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class BirthRate extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;
    public array $aggregateAppendedTraces = ['Crude birth rate per 1000 population' => 'avg'];

    public function getData(string $filterPath): Collection
    {
        return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
            ->select([
                'SUM(CASE WHEN p12 = 0 THEN 1 ELSE 0 END) AS birth',
                'COUNT(*) AS total'
            ])
            ->from(['housing_rec','pop_rec'])
            ->groupBy(['area_code'])
            ->lastlyAreaLeftJoinData()
            ->get()
            ->map(function ($item) {
                $item->rate = safeDivide($item->birth, $item->total) * 1000;
                return $item;
            });
    }
}
