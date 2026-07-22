<?php

namespace App\Livewire\Scorecard\KenyaCensus;

use Carbon\Carbon;
use Illuminate\Support\Collection;
use Illuminate\Support\Number;
use Uneca\Chimera\Livewire\ScorecardComponent;
use Uneca\Chimera\Models\DataSource;
use Uneca\Chimera\Services\AreaTree;
use Uneca\Chimera\Services\BreakoutQueryBuilder;

class EstimatedDaysToCompleteEnumeration extends ScorecardComponent
{
    public string $unit = ' days';

    public function getData(string $filterPath): Collection
    {
        try {
            $now = Carbon::now();

            $areas = (new AreaTree)->areas(
                $filterPath,
                referenceValueToInclude: 'Households',
            );
            $targetHouseholds = $areas->sum('ref_value');

            $completed = (new BreakoutQueryBuilder($this->scorecard->data_source, $filterPath))
                ->select(['COUNT(*) AS value'])
                ->from(['housing_rec'])
                ->getSingleRow();

            $completedCount = $completed->first()->value ?? 0;

            $dataSource = DataSource::where('name', $this->scorecard->data_source)->first();
            $startDate = $dataSource->start_date->copy()->subDay();
            $endDate = $dataSource->end_date;
            $totalDays = $startDate->diffInDays($endDate);
            $daysElapsed = $startDate->diffInDays($now);
            $clampedDays = min(max($daysElapsed, 1), $totalDays + 1);

            $averageDaily = safeDivide($completedCount, $clampedDays);

            $daysLeft = $averageDaily <= 1
                ? $totalDays
                : safeDivide($targetHouseholds - $completedCount, $averageDaily, true);

            if ($daysLeft > 0) {
                $daysLeft += 1;
            }

            $daysLeft = min(max($daysLeft, 0), 100);

            return collect([(object) [
                'value' => Number::format($daysLeft),
                'diff' => null,
            ]]);
        } catch (\Exception $exception) {
            return collect();
        }
    }
}
