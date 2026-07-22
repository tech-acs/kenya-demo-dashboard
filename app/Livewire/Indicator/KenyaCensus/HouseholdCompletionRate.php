<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class HouseholdCompletionRate extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select(['COUNT(*) AS completed'])
                ->from(['housing_rec'])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData(referenceValueToInclude: 'Households')
                ->get()
                ->map(function ($row) {
                    $row->target = $row->ref_value;
                    $row->completion_rate = Number::format(safeDivide($row->completed, $row->target) * 100, 1);
                    return $row;
                });
        } catch (\Exception $e) {
            return collect();
        }
    }
}
