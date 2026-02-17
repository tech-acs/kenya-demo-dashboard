<?php

namespace App\Livewire\Gauge\Households;

use Illuminate\Support\Collection;
use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\GaugeComponent;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class Completion extends GaugeComponent
{
    public string $unit = '/50';
    public array $colorThresholds = [30 => 'text-red-500', 40 => 'text-amber-500', 50 => 'text-green-500'];
    public int $outOf = 50;

    public function getData(string $filterPath): Collection
    {
        try {
            return (new BreakoutQueryBuilder($this->gauge->data_source, $filterPath))
                ->select([
                    'COUNT(*) AS total_households',
                    'SUM(hh_end_interview_time - hh_start_interview_time) AS total_time'
                ])
                ->from(['housing_rec'])
                ->where([
                    'hh_start_interview_time IS NOT NULL',
                    'hh_end_interview_time IS NOT NULL',
                    '(hh_end_interview_time - hh_start_interview_time) > 600',
                    "DATE_FORMAT(FROM_UNIXTIME(hh_start_interview_time), '%Y-%m-%d') = DATE_FORMAT(FROM_UNIXTIME(hh_end_interview_time), '%Y-%m-%d')"
                ])
                ->groupBy(['area_code'])
                ->lastlyAreaLeftJoinData()
                ->get()
                ->map(function ($item) {
                    $item->value = Number::format(safeDivide($item->total_time, $item->total_households) / 60, 1);
                    return $item;
                });
        } catch (\Exception $exception) {
            dump($exception->getMessage());
            return collect();
        }
    }
}
