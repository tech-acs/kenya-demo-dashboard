<?php

namespace App\Livewire\Scorecard\Households;

use Illuminate\Support\Collection;
use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class NumberOfDaysLeft extends ScorecardComponent
{
    public function getData(string $filterPath): Collection
    {
        return collect([11, null]);
    }
}
