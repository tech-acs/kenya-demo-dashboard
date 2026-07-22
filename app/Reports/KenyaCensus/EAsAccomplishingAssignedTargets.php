<?php

namespace App\Reports\KenyaCensus;

use Illuminate\Support\Collection;
use Uneca\Chimera\Report\ReportBaseClass;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class EAsAccomplishingAssignedTargets extends ReportBaseClass
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
                'COUNT(*) AS households_enumerated',
                'ROUND(COUNT(*) * 100.0 / NULLIF(143539, 0), 2) AS achievement_pct',
            ])
            ->from(['housing_rec'])
            ->groupBy(['area_code', 'EA'])
            ->get();
    }
}
