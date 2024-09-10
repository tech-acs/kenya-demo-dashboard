<?php

namespace App\Livewire\Scorecard\Households;

use Illuminate\Support\Collection;
use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class AverageHouseholdSize extends ScorecardComponent
{
    public function getData(string $filterPath): Collection
    {
        $result = (new BreakoutQueryBuilder($this->scorecard->data_source, $filterPath))
            ->select(['SUM(total_household_members) AS total_population',
                'COUNT(*) AS total_households'])
            ->from(['housing_rec'])
            ->get()
            ->first();
        return collect([Number::format(safeDivide($result->total_population, $result->total_households), 1), null]);
    }
}
