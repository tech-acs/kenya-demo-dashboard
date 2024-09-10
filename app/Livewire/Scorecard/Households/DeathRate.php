<?php

namespace App\Livewire\Scorecard\Households;

use Illuminate\Support\Collection;
use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class DeathRate extends ScorecardComponent
{
    public function getData(string $filterPath): Collection
    {
        $result = (new BreakoutQueryBuilder($this->scorecard->data_source, $filterPath))
            ->select(['SUM(total_household_members) AS total', 'SUM(h11) AS deaths'])
            ->from(['housing_rec'])
            ->get()
            ->first();
        return collect([Number::format(safeDivide($result->deaths, $result->total) * 1000, 1), null]);
    }
}
