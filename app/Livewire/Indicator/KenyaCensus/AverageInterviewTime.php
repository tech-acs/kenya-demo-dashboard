<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class AverageInterviewTime extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select(["AVG((COALESCE(HH_END_INTERVIEW_TIME, 0) - COALESCE(HH_START_INTERVIEW_TIME, 0)) / 60) AS avg_interview_minutes"])
                ->from(['housing_rec'])
                ->where(["HH_END_INTERVIEW_TIME IS NOT NULL", "HH_START_INTERVIEW_TIME IS NOT NULL", "HH_END_INTERVIEW_TIME > HH_START_INTERVIEW_TIME"])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData()
                ->get()
                ->map(fn ($row) => tap($row, fn ($r) => $r->avg_interview_minutes = Number::format($r->avg_interview_minutes, 1)));
        } catch (\Exception $e) {
            return collect();
        }
    }
}
