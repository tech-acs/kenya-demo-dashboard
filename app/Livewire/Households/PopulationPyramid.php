<?php

namespace App\Livewire\Households;

use Uneca\Chimera\Livewire\Chart;
use Illuminate\Support\Collection;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class PopulationPyramid extends Chart
{
    public function getData(string $filterPath = ''): Collection
    {
        return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
            ->select([
                "CONCAT(FLOOR(p12/5) * 5, '-', FLOOR(p12/5) * 5 + 4) AS age_range",
                "FLOOR(p12/5) * 5 AS range_start",
                "SUM(CASE WHEN p11 = 1 THEN 1 ELSE 0 END) AS males",
                "SUM(CASE WHEN p11 = 2 THEN 1 ELSE 0 END) AS females",
                "-1 * SUM(CASE WHEN p11 = 1 THEN 1 ELSE 0 END) AS males_negated"
            ])
            ->from(['housing_rec','pop_rec'])
            ->groupBy(['range_start'])
            ->orderBy(['range_start'])
            ->get();
    }
}
