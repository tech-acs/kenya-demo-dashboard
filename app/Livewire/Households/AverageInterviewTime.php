<?php

namespace App\Livewire\Households;

use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\Chart;
use Illuminate\Support\Collection;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class AverageInterviewTime extends Chart
{
    public bool $useDynamicAreaXAxisTitles = true;
    public array $aggregateAppendedTraces = ['Average interview time' => 'avg'];

    public function getData(string $filterPath): Collection
    {
        return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
            ->select([
                'COUNT(*) AS total_households',
                'SUM(hh_end_interview_time - hh_start_interview_time) AS total_time'
            ])
            ->from(['housing_rec'])
            ->where([
                'hh_start_interview_time IS NOT NULL',
                'hh_end_interview_time IS NOT NULL',
                '(hh_end_interview_time - hh_start_interview_time) > 600',
                "DATE_FORMAT(FROM_UNIXTIME(hh_start_interview_time), '%Y-%m-%d') = DATE_FORMAT(FROM_UNIXTIME(hh_end_interview_time), '%Y-%m-%d')"
            ])
            ->groupBy(['area_code'])
            ->lastlyAreaLeftJoinData()
            ->get()
            ->map(function ($item) {
                $item->average = Number::format(safeDivide($item->total_time, $item->total_households) / 60, 1);
                return $item;
            });
    }
}
