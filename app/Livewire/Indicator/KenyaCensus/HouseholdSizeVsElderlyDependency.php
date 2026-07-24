<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class HouseholdSizeVsElderlyDependency extends Chart
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
            $hhSize = (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select(['AVG(TOTAL_HOUSEHOLD_MEMBERS) AS avg_hh_size'])
                ->from(['housing_rec'])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData()
                ->get();

            $ageGroups = (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select([
                    'SUM(CASE WHEN P12 BETWEEN 15 AND 64 THEN 1 ELSE 0 END) AS working_age',
                    'SUM(CASE WHEN P12 >= 65 THEN 1 ELSE 0 END) AS elderly',
                ])
                ->from(['pop_rec'])
                ->where(['HH_KEEP_ROW = 1', 'P12 IS NOT NULL', 'P12 < 999'])
                ->groupBy(['area_code'])
                ->get();

            $ageByCode = $ageGroups->keyBy('area_code');

            return $hhSize->map(function ($row) use ($ageByCode) {
                $age = $ageByCode->get($row->area_code);
                $row->elderly_ratio = safeDivide($age->elderly ?? 0, $age->working_age ?? 0) * 100;
                return $row;
            });
        } catch (\Exception $exception) {
            return collect();
        }
    }
}
