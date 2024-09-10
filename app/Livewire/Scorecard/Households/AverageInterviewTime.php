<?php

namespace App\Livewire\Scorecard\Households;

use Illuminate\Support\Collection;
use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class AverageInterviewTime extends ScorecardComponent
{
    public function getData(string $filterPath): Collection
    {
        $result = (new BreakoutQueryBuilder($this->scorecard->data_source, $filterPath))
            ->select(['AVG(hh_end_interview_time - hh_start_interview_time) AS avg'])
            ->from(['housing_rec'])
            ->where([
                'hh_start_interview_time IS NOT NULL',
                'hh_end_interview_time IS NOT NULL',
                "DATE_FORMAT(FROM_UNIXTIME(hh_start_interview_time), '%Y-%m-%d') = DATE_FORMAT(FROM_UNIXTIME(hh_end_interview_time), '%Y-%m-%d')",
                '(hh_end_interview_time - hh_start_interview_time) > 300'
            ])
            ->get()
            ->first();
        return collect([Number::format(safeDivide($result->avg, 60), 1), null]);
    }
}
