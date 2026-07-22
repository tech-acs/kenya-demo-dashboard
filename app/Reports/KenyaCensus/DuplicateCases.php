<?php

namespace App\Reports\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Report\ReportBaseClass;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class DuplicateCases extends ReportBaseClass
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
                'COUNT(*) AS duplicate_count',
            ])
            ->from(['housing_rec'])
            ->groupBy(['area_code', 'EA', 'ENUMERATOR_ID'])
            ->having(['COUNT(*) > 1'])
            ->get();
    }
}
