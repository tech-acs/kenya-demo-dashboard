<?php

namespace App\Livewire\Scorecard\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class NumberOfHouseholds extends ScorecardComponent
{
    /**
     * Override-able base class defaults.
     *
     * Uncomment any property below and set a different value to override the
     * base class default.
     */
    // public string $unit = '%';
    // public string $bgColor;
    // public string $fgColor;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->scorecard->data_source, $filterPath))
                ->select([
                    'COUNT(*) AS value',
                    'NULL AS diff',
                ])
                ->from(['housing_rec'])
                ->getSingleRow();
        } catch (\Exception $exception) {
            return collect();
        }
    }
}
