<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class FertilityRate extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        try {
            $births = (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select(['SUM(COALESCE(H10, 0)) AS births'])
                ->from(['housing_rec'])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData()
                ->get();

            $women = (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select(['SUM(CASE WHEN P11 = 2 AND P12 >= 15 AND P12 <= 49 THEN 1 ELSE 0 END) AS women_15_49'])
                ->from(['pop_rec'])
                ->groupBy(['area_code'])
                ->get()
                ->keyBy('area_code');

            return $births->map(function ($row) use ($women) {
                $row->women_15_49 = $women->get($row->area_code)->women_15_49 ?? 0;
                $row->fertility_rate = Number::format(safeDivide($row->births, $row->women_15_49) * 1000, 1);
                return $row;
            });
        } catch (\Exception $e) {
            return collect();
        }
    }
}
