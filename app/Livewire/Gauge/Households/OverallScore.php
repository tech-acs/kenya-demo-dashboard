<?php

namespace App\Livewire\Gauge\Households;

use Illuminate\Support\Collection;
use Uneca\Chimera\Livewire\GaugeComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class OverallScore extends GaugeComponent
{
    // public string $unit = '%';
    // public string $bgColor;
    // public string $fgColor;

    public function getData(string $filterPath): Collection
    {
        try {
            return collect([(object)['value' => 93]]);
        } catch (\Exception $exception) {
            return collect();
        }
    }
}
