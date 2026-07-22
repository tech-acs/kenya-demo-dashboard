<?php

namespace App\Reports\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Report\ReportBaseClass;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class EnumeratorPerformance extends ReportBaseClass
{
    /**
     * Override-able base class default.
     *
     * Uncomment and set a different value to override the base class default.
     */
    // public string $fileType = 'xlsx';

    public function getData(string $filterPath): Collection
    {
        return (new BreakoutQueryBuilder($this->report->data_source, $filterPath))
            ->select([
                'ENUMERATOR_ID AS enumerator',
                'COUNT(*) AS households',
                'ROUND(AVG(TOTAL_HOUSEHOLD_MEMBERS), 1) AS avg_hh_size',
            ])
            ->from(['housing_rec'])
            ->groupBy(['area_code', 'ENUMERATOR_ID'])
            ->get();
    }
}
