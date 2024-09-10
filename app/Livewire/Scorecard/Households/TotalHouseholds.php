<?php

namespace App\Livewire\Scorecard\Households;

use Illuminate\Support\Collection;
use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class TotalHouseholds extends ScorecardComponent
{
    public function getData(string $filterPath): Collection
    {
        $result = (new BreakoutQueryBuilder($this->scorecard->data_source, $filterPath))
            ->select(['COUNT(*) AS total'])
            ->from(['housing_rec'])
            ->get()
            ->first();
        return collect([Number::format($result->total), 13]);
    }
}
