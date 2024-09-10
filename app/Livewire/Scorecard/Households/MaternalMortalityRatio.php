<?php

namespace App\Livewire\Scorecard\Households;

use Illuminate\Support\Collection;
use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class MaternalMortalityRatio extends ScorecardComponent
{
    public function getData(string $filterPath): Collection
    {
        $result = (new BreakoutQueryBuilder($this->scorecard->data_source, $filterPath))
            ->select(['SUM(h10) AS births', 'SUM(CASE WHEN h18_1 = 1 OR h18_2 = 1 OR h18_3 = 1 THEN 1 ELSE 0 END) AS deaths'])
            ->from(['housing_rec', 'death_rec'])
            ->get()
            ->first();
        return collect([Number::format(safeDivide($result->deaths, $result->births) * 100_000, 1), null]);
    }
}
