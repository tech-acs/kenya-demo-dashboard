<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class StructuresHouseholdsByType extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select([
                    "SUM(CASE WHEN TYPE_OF_QUESTIONNAIRE = 1 THEN 1 ELSE 0 END) AS household",
                    "SUM(CASE WHEN TYPE_OF_QUESTIONNAIRE = 3 THEN 1 ELSE 0 END) AS hotel_lodge",
                    "SUM(CASE WHEN TYPE_OF_QUESTIONNAIRE = 4 THEN 1 ELSE 0 END) AS hospital",
                    "SUM(CASE WHEN TYPE_OF_QUESTIONNAIRE = 5 THEN 1 ELSE 0 END) AS prison",
                    "SUM(CASE WHEN TYPE_OF_QUESTIONNAIRE = 6 THEN 1 ELSE 0 END) AS school_home",
                    "SUM(CASE WHEN TYPE_OF_QUESTIONNAIRE = 7 THEN 1 ELSE 0 END) AS transit",
                    "SUM(CASE WHEN TYPE_OF_QUESTIONNAIRE = 8 THEN 1 ELSE 0 END) AS street",
                ])
                ->from(['housing_rec'])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData()
                ->get();
        } catch (\Exception $e) {
            return collect();
        }
    }
}
