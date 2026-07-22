<?php

namespace App\MapIndicators\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\MapIndicator\MapIndicatorBaseClass;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class PopulationEnumerated extends MapIndicatorBaseClass
{
    /**
     * Override-able base class defaults.
     *
     * Uncomment any property below and set a different value to override the
     * base class default.
     */
    // public string $valueField = 'value';
    // public string $displayValueField = 'display_value';
    // public string $infoTextField = 'info';
    public array $bins = [0, 10000, 50000, 100000, 500000, 1000000];
    public const SELECTED_COLOR_CHART = 'alizarin';

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->mapIndicator->data_source, $filterPath))
                ->select(['COUNT(*) AS value'])
                ->from(['pop_rec'])
                ->where(["HH_KEEP_ROW = 1"])
                ->groupBy(['area_code'])
                ->get();
        } catch (\Exception $e) {
            return collect();
        }
    }
}
