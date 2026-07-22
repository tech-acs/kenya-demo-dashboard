<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class AverageHouseholdSize extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select(['AVG(TOTAL_HOUSEHOLD_MEMBERS) AS avg_household_size'])
                ->from(['housing_rec'])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData()
                ->get()
                ->map(fn ($row) => tap($row, fn ($r) => $r->avg_household_size = Number::format($r->avg_household_size, 1)));
        } catch (\Exception $e) {
            return collect();
        }
    }
}
