<?php

namespace App\Livewire\Households;

use Uneca\Chimera\Livewire\Chart;
use Illuminate\Support\Collection;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class HouseholdsEnumeratedAgainstTarget extends Chart
{
    public function getData(string $filterPath): Collection
    {
        return (new BreakoutQueryBuilder($this->indicator->data_source, $filterPath))
            ->select(['COUNT(*) AS household'])
            ->from(['housing_rec'])
            ->groupBy(['area_code'])
            ->lastlyAreaLeftJoinData(referenceValueToInclude: 'number_of_hh')
            ->get();
    }
}
