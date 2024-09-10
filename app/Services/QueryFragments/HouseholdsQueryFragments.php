<?php

namespace App\Services\QueryFragments;

use Uneca\Chimera\Services\AreaTree;

class HouseholdsQueryFragments
{
    public function getSqlFragments(string $filterPath) : array
    {
        $filter = AreaTree::pathAsFilter($filterPath);
        $fromTables = [];

        if (!blank($filter['Sublocation'] ?? null)) {
            $selectColumns = ["LPAD(ea, 3, '0') AS area_code"];
            $whereConditions = ["LPAD(county, 2, '0') = '{$filter['County']}'",
                "LPAD(subcounty, 2, '0') = '{$filter['Subcounty']}'",
                "LPAD(division, 2, '0') = '{$filter['Division']}'",
                "LPAD(location, 2, '0') = '{$filter['Location']}'",
                "LPAD(sublocation, 2, '0') = '{$filter['Sublocation']}'"];

        }  elseif (!blank($filter['Location'] ?? null)) {
            $selectColumns = ["LPAD(sublocation, 2, '0') AS area_code"];
            $whereConditions = ["LPAD(county, 2, '0') = '{$filter['County']}'", "LPAD(subcounty, 2, '0') = '{$filter['Subcounty']}'", "LPAD(division, 2, '0') = '{$filter['Division']}'", "LPAD(location, 2, '0') = '{$filter['Location']}'"];

        }  elseif (!blank($filter['Division'] ?? null)) {
            $selectColumns = ["LPAD(location,2,'0') AS area_code"];
            $whereConditions = ["LPAD(county, 2, '0') = '{$filter['County']}'", "LPAD(subcounty, 2, '0') = '{$filter['Subcounty']}'", "LPAD(division, 2, '0') = '{$filter['Division']}'"];

        }  elseif (!blank($filter['Subcounty'] ?? null)) {
            $selectColumns = ["LPAD(division, 2, '0') AS area_code"];
            $whereConditions = ["LPAD(county, 2, '0') = '{$filter['County']}'", "LPAD(subcounty, 2, '0') = '{$filter['Subcounty']}'"];

        }  elseif (!blank($filter['County'] ?? null)) {
            $selectColumns = ["LPAD(subcounty, 2, '0') AS area_code"];
            $whereConditions = ["LPAD(county, 2, '0') = '{$filter['County']}'"];

        }else {
            $selectColumns = ["LPAD(county, 2, '0') AS area_code"];
            $whereConditions = [];
        }

        return [$selectColumns, $whereConditions, $fromTables];
    }
}
