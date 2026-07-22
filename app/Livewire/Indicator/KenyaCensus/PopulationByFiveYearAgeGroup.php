<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class PopulationByFiveYearAgeGroup extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select([
                    'COUNT(*) AS total',
                    'SUM(CASE WHEN P12 BETWEEN 0 AND 4 THEN 1 ELSE 0 END) AS age_0_4',
                    'SUM(CASE WHEN P12 BETWEEN 5 AND 9 THEN 1 ELSE 0 END) AS age_5_9',
                    'SUM(CASE WHEN P12 BETWEEN 10 AND 14 THEN 1 ELSE 0 END) AS age_10_14',
                    'SUM(CASE WHEN P12 BETWEEN 15 AND 19 THEN 1 ELSE 0 END) AS age_15_19',
                    'SUM(CASE WHEN P12 BETWEEN 20 AND 24 THEN 1 ELSE 0 END) AS age_20_24',
                    'SUM(CASE WHEN P12 BETWEEN 25 AND 29 THEN 1 ELSE 0 END) AS age_25_29',
                    'SUM(CASE WHEN P12 BETWEEN 30 AND 34 THEN 1 ELSE 0 END) AS age_30_34',
                    'SUM(CASE WHEN P12 BETWEEN 35 AND 39 THEN 1 ELSE 0 END) AS age_35_39',
                    'SUM(CASE WHEN P12 BETWEEN 40 AND 44 THEN 1 ELSE 0 END) AS age_40_44',
                    'SUM(CASE WHEN P12 BETWEEN 45 AND 49 THEN 1 ELSE 0 END) AS age_45_49',
                    'SUM(CASE WHEN P12 BETWEEN 50 AND 54 THEN 1 ELSE 0 END) AS age_50_54',
                    'SUM(CASE WHEN P12 BETWEEN 55 AND 59 THEN 1 ELSE 0 END) AS age_55_59',
                    'SUM(CASE WHEN P12 BETWEEN 60 AND 64 THEN 1 ELSE 0 END) AS age_60_64',
                    'SUM(CASE WHEN P12 BETWEEN 65 AND 69 THEN 1 ELSE 0 END) AS age_65_69',
                    'SUM(CASE WHEN P12 BETWEEN 70 AND 74 THEN 1 ELSE 0 END) AS age_70_74',
                    'SUM(CASE WHEN P12 BETWEEN 75 AND 79 THEN 1 ELSE 0 END) AS age_75_79',
                    'SUM(CASE WHEN P12 BETWEEN 80 AND 84 THEN 1 ELSE 0 END) AS age_80_84',
                    'SUM(CASE WHEN P12 BETWEEN 85 AND 89 THEN 1 ELSE 0 END) AS age_85_89',
                    'SUM(CASE WHEN P12 >= 90 THEN 1 ELSE 0 END) AS age_90_plus',
                ])
                ->from(['pop_rec'])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData()
                ->get();
        } catch (\Exception $e) {
            return collect();
        }
    }
}
