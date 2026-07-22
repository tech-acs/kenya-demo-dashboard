<?php

namespace App\Reports\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Report\ReportBaseClass;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class EAsThatStartedEnumeration extends ReportBaseClass
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
                "MIN(CONCAT(YDOI, '-', LPAD(MDOI, 2, '0'), '-', LPAD(DDOI, 2, '0'))) AS first_date",
                'COUNT(*) AS total_households',
            ])
            ->from(['housing_rec'])
            ->groupBy(['area_code', 'EA'])
            ->get();
    }
}
