<?php

namespace App\Livewire\Scorecard\Households;

use Illuminate\Support\Collection;
use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class BirthRate extends ScorecardComponent
{
    public function getData(string $filterPath): Collection
    {
        $result = (new BreakoutQueryBuilder($this->scorecard->data_source, $filterPath))
            ->select(['SUM(CASE WHEN p12 = 0 THEN 1 ELSE 0 END) AS births', 'COUNT(*) AS total'])
            ->from(['housing_rec','pop_rec'])
            ->get()
            ->first();
        return collect([Number::format(safeDivide($result->births, $result->total) * 1000, 1), null]);
    }
}
