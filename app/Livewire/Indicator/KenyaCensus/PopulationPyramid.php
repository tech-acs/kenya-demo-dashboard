<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class PopulationPyramid extends Chart
{
    /**
     * Override-able base class defaults.
     *
     * Uncomment any property below and set a different value to override the
     * base class default.
     */
    // public array $aggregateAppendedTraces = []; /* ['trace name' => 'avg'] ... sum, count, min, max, mode, median */

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select([
                    "CASE
                        WHEN P12 BETWEEN 0 AND 4 THEN '0-4'
                        WHEN P12 BETWEEN 5 AND 9 THEN '5-9'
                        WHEN P12 BETWEEN 10 AND 14 THEN '10-14'
                        WHEN P12 BETWEEN 15 AND 19 THEN '15-19'
                        WHEN P12 BETWEEN 20 AND 24 THEN '20-24'
                        WHEN P12 BETWEEN 25 AND 29 THEN '25-29'
                        WHEN P12 BETWEEN 30 AND 34 THEN '30-34'
                        WHEN P12 BETWEEN 35 AND 39 THEN '35-39'
                        WHEN P12 BETWEEN 40 AND 44 THEN '40-44'
                        WHEN P12 BETWEEN 45 AND 49 THEN '45-49'
                        WHEN P12 BETWEEN 50 AND 54 THEN '50-54'
                        WHEN P12 BETWEEN 55 AND 59 THEN '55-59'
                        WHEN P12 BETWEEN 60 AND 64 THEN '60-64'
                        WHEN P12 BETWEEN 65 AND 69 THEN '65-69'
                        WHEN P12 BETWEEN 70 AND 74 THEN '70-74'
                        WHEN P12 BETWEEN 75 AND 79 THEN '75-79'
                        WHEN P12 BETWEEN 80 AND 84 THEN '80-84'
                        WHEN P12 BETWEEN 85 AND 89 THEN '85-89'
                        WHEN P12 BETWEEN 90 AND 94 THEN '90-94'
                        WHEN P12 BETWEEN 95 AND 99 THEN '95-99'
                        WHEN P12 >= 100 THEN '100+'
                    END AS age_group",
                    "SUM(CASE WHEN P11 = 1 THEN 1 ELSE 0 END) AS males",
                    "SUM(CASE WHEN P11 = 2 THEN 1 ELSE 0 END) AS females",
                ])
                ->from(['pop_rec'])
                ->where(["HH_KEEP_ROW = 1", "P11 IN (1, 2)"])
                ->groupBy(['age_group'])
                ->orderBy(['MIN(P12) ASC'])
                ->get()
                ->map(fn ($row) => (object) [
                    'age_group' => $row->age_group,
                    'males' => -$row->males,
                    'females' => $row->females,
                ]);
        } catch (\Exception $exception) {
            return collect();
        }
    }
}
