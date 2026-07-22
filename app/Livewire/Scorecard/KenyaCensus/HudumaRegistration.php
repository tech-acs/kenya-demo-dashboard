<?php

namespace App\Livewire\Scorecard\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class HudumaRegistration extends ScorecardComponent
{
    public string $unit = '%';

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->scorecard->data_source, $filterPath))
                ->select([
                    "COALESCE(SUM(CASE WHEN P60 = 1 THEN 1 ELSE 0 END), 0) AS value",
                    'ROUND(COALESCE(SUM(CASE WHEN P60 = 1 THEN 1 ELSE 0 END), 0) * 100.0 / COUNT(*), 1) AS diff',
                ])
                ->from(['pop_rec'])
                ->where(["HH_KEEP_ROW = 1", "P60 IS NOT NULL"])
                ->getSingleRow();
        } catch (\Exception $exception) {
            return collect();
        }
    }
}
