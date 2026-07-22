<?php

namespace App\Livewire\Scorecard\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class PopulationCount extends ScorecardComponent
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
    public ?string $valueFormat = 'number'; // null, 'number', 'number:1', 'number:2', 'percentage', 'percentage:1', 'abbreviated', 'human'

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->scorecard->data_source, $filterPath))
                ->select([
                    'COUNT(*) AS value',
                    'NULL AS diff',
                ])
                ->from(['pop_rec'])
                ->getSingleRow();
        } catch (\Exception $exception) {
            return collect();
        }
    }
}
