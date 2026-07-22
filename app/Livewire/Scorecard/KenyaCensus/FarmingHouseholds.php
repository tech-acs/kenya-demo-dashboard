<?php

namespace App\Livewire\Scorecard\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class FarmingHouseholds extends ScorecardComponent
{
    /**
     * Override-able base class defaults.
     *
     * Uncomment any property below and set a different value to override the
     * base class default.
     */
    public string $unit = '%';

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->scorecard->data_source, $filterPath))
                ->select(["SUM(CASE WHEN h19_1 = '1' OR h19_2 = '1' OR h19_3 = '1' THEN 1 ELSE 0 END) AS value", "ROUND(SUM(CASE WHEN h19_1 = '1' OR h19_2 = '1' OR h19_3 = '1' THEN 1 ELSE 0 END) / COUNT(*) * 100, 1) AS diff"])
                ->from(['housing_rec'])
                ->getSingleRow();
        } catch (\Exception $e) {
            return collect();
        }
    }
}
