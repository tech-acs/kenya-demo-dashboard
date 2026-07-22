<?php

namespace App\Livewire\Indicator\KenyaCensus;

use Carbon\Carbon;
use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\Chart;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class HouseholdsEnumeratedPerDay extends Chart
{
    public function getData(string $filterPath): Collection
    {
        try {
            $startDate = $this->indicator->getDataSource()->start_date->format('Y-m-d');
            $endDate = $this->indicator->getDataSource()->end_date->format('Y-m-d');

            return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
                ->select([
                    "DATE_FORMAT(FROM_UNIXTIME(HH_START_INTERVIEW_TIME), '%Y-%m-%d') AS enumeration_date",
                    'COUNT(*) AS total',
                ])
                ->from(['housing_rec'])
                ->groupBy(['enumeration_date'])
                ->orderBy(['enumeration_date'])
                ->get();
        } catch (\Exception $e) {
            return collect();
        }
    }
}
