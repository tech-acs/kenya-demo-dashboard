<?php

namespace App\MapIndicators\KenyaCensus;

use Illuminate\Support\Number;
use Illuminate\Support\Collection;
use Uneca\Chimera\MapIndicator\MapIndicatorBaseClass;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class ImprovedWaterAccess extends MapIndicatorBaseClass
{
    /**
     * Override-able base class defaults.
     *
     * Uncomment any property below and set a different value to override the
     * base class default.
     */
    public array $bins = [0, 35, 65, 100];
    public const SELECTED_COLOR_CHART = 'rag';

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->mapIndicator->data_source, $filterPath))
                ->select([
                    'COUNT(*) AS total',
                    "SUM(CASE WHEN H33 IN (5,7,9,10,11,12,13,15) THEN 1 ELSE 0 END) AS improved",
                ])
                ->from(['housing_rec'])
                ->groupBy(['area_code'])
                ->get()
                ->map(fn ($row) => (object) [
                    'area_code' => $row->area_code,
                    'value' => round(safeDivide($row->improved, $row->total) * 100, 1),
                    'display_value' => round(safeDivide($row->improved, $row->total) * 100, 1) . '%',
                    'info' => round(safeDivide($row->improved, $row->total) * 100, 1)
                        . '% (' . $row->improved . ' of ' . $row->total . ' households)',
                ]);
        } catch (\Exception $e) {
            return collect();
        }
    }
}
