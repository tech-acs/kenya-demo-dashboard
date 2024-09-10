<?php

namespace App\Livewire\Households;

use Uneca\Chimera\Livewire\Chart;
use Illuminate\Support\Collection;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class HouseholdsEnumeratedAgainstTargetByDay extends Chart
{
    public function getData(string $filterPath): Collection
    {
        return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
            ->select(["DATE_FORMAT(FROM_UNIXTIME(hh_start_interview_time), '%Y-%m-%d') AS enumeration_date", 'COUNT(*) AS total_hh'])
            ->from(['housing_rec'])
            ->groupBy(['enumeration_date'])
            ->orderBy(['enumeration_date'])
            ->lastlyAreaLeftJoinData(referenceValueToInclude: 'number_of_hh')
            ->get();
    }
}
