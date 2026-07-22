<?php

namespace App\Reports\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Report\ReportBaseClass;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class PartialCases extends ReportBaseClass
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
                'EA AS ea_code',
                'ENUMERATOR_ID AS enumerator',
                'INTERVIEW_STATUS AS status',
                'TOTAL_HOUSEHOLD_MEMBERS AS hh_size',
            ])
            ->from(['housing_rec'])
            ->where(["INTERVIEW_STATUS != 'Complete'"])
            ->get();
    }
}
