<?php

namespace App\MapIndicators\Households;

use Illuminate\Support\Collection;
use Uneca\Chimera\MapIndicator\MapIndicatorBaseClass;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class TotalHH extends MapIndicatorBaseClass
{
    public array $bins = [0, 50, 75, 100];
    public const SELECTED_COLOR_CHART = 'rag';

    public function getData(string $filterPath): Collection
    {
        return (new BreakoutQueryBuilder($this->mapIndicator->data_source, $filterPath))
            ->select(['COUNT(*) AS value'])
            ->from(['housing_rec'])
            ->groupBy(['area_code'])
            //->lastlyAreaLeftJoinData()
            ->get();
    }
}
