<?php

namespace App\Livewire\Scorecard\KenyaCensus;

use Illuminate\Support\Collection;
use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class AverageInterviewTime extends ScorecardComponent
{
    public string $unit = ' min';

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->scorecard->data_source, $filterPath))
                ->select([
                    'AVG(TIME_TO_SEC(TIMEDIFF(ENDTIME, STARTTIME))) / 60 AS value',
                    'NULL AS diff',
                ])
                ->from(['housing_rec'])
                ->getSingleRow()
                ->map(fn ($row) => (object) [
                    'value' => Number::format($row->value, 1),
                    'diff' => null,
                ]);
        } catch (\Exception $exception) {
            return collect();
        }
    }
}
