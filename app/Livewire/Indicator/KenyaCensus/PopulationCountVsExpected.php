<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class PopulationCountVsExpected extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;
    // public array $aggregateAppendedTraces = [];

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select(['SUM(COALESCE(TOTAL_HOUSEHOLD_MEMBERS, 0)) AS enumerated'])
                ->from(['housing_rec'])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData(referenceValueToInclude: 'Population')
                ->get()
                ->map(function ($row) {
                    $row->enumerated = (int) ($row->enumerated ?? 0);
                    $row->remaining = max(0, ((int) ($row->ref_value ?? 0)) - $row->enumerated);
                    return $row;
                });
        } catch (\Exception $exception) {
            return collect();
        }
    }
}
