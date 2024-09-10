<?php

namespace App\Reports\Households;

use Uneca\Chimera\Report\ReportBaseClass;
use Illuminate\Support\Collection;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class PartialCasesByEa extends ReportBaseClass
{
    public function getData(string $path): Collection
    {
        return (new BreakoutQueryBuilder($this->report->data_source, $path))
            ->select([
                "LPAD(county,2,'0') AS 'County code'",
                "LPAD(subcounty,2,'0') AS 'Subcounty code'",
                "LPAD(division,2,'0') AS 'Division code'",
                "LPAD(location,2,'0') AS 'Location code'",
                "LPAD(sublocation,2,'0') AS 'Sublocation code'",
                "LPAD(ea,3,'0') AS 'EA code'",
                "SUM(CASE WHEN cases.partial_save_mode IS NULL THEN 0 ELSE 1 END) AS 'No. of partial cases'"
            ])
            ->from([])
            ->groupBy([
                'CONCAT(county, subcounty, division, location, sublocation, ea)'
            ])
            ->having(['`No. of partial cases` > 0'])
            ->get();
    }
}
