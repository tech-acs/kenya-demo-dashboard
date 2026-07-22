<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class EducationLevelBySex extends Chart
{
    /**
     * Override-able base class defaults.
     *
     * Uncomment any property below and set a different value to override the
     * base class default.
     */
    // public bool $useDynamicAreaXAxisTitles = true;
    // public array $aggregateAppendedTraces = []; /* ['trace name' => 'avg'] ... sum, count, min, max, mode, median */

    public function getData(string $filterPath): Collection
    {
        try {
                $educationOrder = [
                    'None/Never Attended',
                    'Informal/Other',
                    'Primary',
                    'Secondary',
                    'Tertiary',
                    'Not Stated/DK',
                ];

                $sexOrder = ['Male', 'Female'];

                $data = (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                    ->select([
                        "CASE WHEN P11 = 1 THEN 'Male' ELSE 'Female' END AS sex",
                        "CASE
                            WHEN P47_COMP = 1 THEN 'None/Never Attended'
                            WHEN P47_COMP = 2 THEN 'Informal/Other'
                            WHEN P47_COMP = 3 THEN 'Primary'
                            WHEN P47_COMP = 4 THEN 'Secondary'
                            WHEN P47_COMP = 5 THEN 'Tertiary'
                            WHEN P47_COMP = 6 THEN 'Not Stated/DK'
                            ELSE 'Not Stated/DK'
                        END AS education_level",
                        'COUNT(*) AS count',
                    ])
                    ->from(['pop_rec'])
                    ->where(["HH_KEEP_ROW = 1"])
                    ->groupBy(['P11', 'education_level'])
                    ->orderBy(['P11 ASC'])
                    ->get()
                    ->sortBy(function ($row) use ($educationOrder, $sexOrder) {
                        return array_search($row->sex, $sexOrder) * 10 + array_search($row->education_level, $educationOrder);
                    })->values();

            $totals = $data->groupBy('sex')
                ->map(fn ($group) => $group->sum('count'));

            return $data->map(fn ($row) => (object) [
                'sex' => $row->sex,
                'education_level' => $row->education_level,
                'percentage' => round(
                    safeDivide($row->count, $totals->get($row->sex)) * 100, 1
                ),
            ]);
        } catch (\Exception $e) {
            return collect();
        }
    }
}
