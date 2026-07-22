<?php

namespace App\Livewire\Scorecard\KenyaCensus;

use Illuminate\Support\Collection;
use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class AverageHouseholdSize extends ScorecardComponent
{
    public string $unit = '';

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->scorecard->data_source, $filterPath))
                ->select([
                    'SUM(TOTAL_HOUSEHOLD_MEMBERS) AS total_population',
                    'COUNT(*) AS total_households',
                ])
                ->from(['housing_rec'])
                ->getSingleRow()
                ->map(fn ($row) => (object) [
                    'value' => Number::format(safeDivide($row->total_population, $row->total_households), 1),
                    'diff' => null,
                ]);
        } catch (\Exception $exception) {
            return collect();
        }
    }
}
