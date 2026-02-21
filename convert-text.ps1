$csv = Import-Csv "ordermonitor_2026_01_30_17_02_27.csv"

# Get a representative sample
$statuses = $csv | Group-Object "Order Detail Status"
$sample = @()
foreach ($group in $statuses) {
    $take = [Math]::Min($group.Count, [Math]::Max(3, [Math]::Ceiling(100 * $group.Count / $csv.Count)))
    $sample += $group.Group | Select-Object -First $take
}
$sample = $sample | Sort-Object { [datetime]$_."Created At" } -Descending

$sb = [System.Text.StringBuilder]::new()
[void]$sb.AppendLine("# Order Monitor Export - Newburgh DC 3694")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("Export Date: January 30, 2026")
[void]$sb.AppendLine("Total Orders in Full Export: $($csv.Count)")
[void]$sb.AppendLine("")

# Status summary
[void]$sb.AppendLine("## Status Summary")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("| Status | Count |")
[void]$sb.AppendLine("|---|---|")
foreach ($s in ($statuses | Sort-Object Count -Descending)) {
    [void]$sb.AppendLine("| $($s.Name) | $($s.Count) |")
}
[void]$sb.AppendLine("")

# Request Type summary
$reqTypes = $csv | Group-Object "Request Type"
[void]$sb.AppendLine("## Request Type Summary")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("| Request Type | Count |")
[void]$sb.AppendLine("|---|---|")
foreach ($r in ($reqTypes | Sort-Object Count -Descending)) {
    [void]$sb.AppendLine("| $($r.Name) | $($r.Count) |")
}
[void]$sb.AppendLine("")

# Priority counts
$hotCalls = ($csv | Where-Object { $_."Is Hot Call" -eq "true" }).Count
$vor = ($csv | Where-Object { $_."Vehicle Off Road" -eq "true" }).Count
[void]$sb.AppendLine("## Priority Counts")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("- Hot Calls: $hotCalls")
[void]$sb.AppendLine("- Vehicle Off Road (VOR): $vor")
[void]$sb.AppendLine("")

# Part Group summary
$partGroups = $csv | Group-Object "Part Group"
[void]$sb.AppendLine("## Part Group Summary")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("| Part Group | Count |")
[void]$sb.AppendLine("|---|---|")
foreach ($p in ($partGroups | Sort-Object Count -Descending)) {
    [void]$sb.AppendLine("| $($p.Name) | $($p.Count) |")
}
[void]$sb.AppendLine("")

# Dest Entity Group summary
$destGroups = $csv | Group-Object "Destination Entity Group"
[void]$sb.AppendLine("## Destination Entity Group Summary")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("| Destination Entity Group | Count |")
[void]$sb.AppendLine("|---|---|")
foreach ($d in ($destGroups | Sort-Object Count -Descending)) {
    $name = $d.Name -replace "\|","-"
    [void]$sb.AppendLine("| $name | $($d.Count) |")
}
[void]$sb.AppendLine("")

# Sample orders as text blocks
[void]$sb.AppendLine("## Sample Orders ($($sample.Count) rows)")
[void]$sb.AppendLine("")

$i = 1
foreach ($row in $sample) {
    $desc = $row."Part Description" -replace "\|","-"
    $delTo = $row."Deliver To" -replace "\|","-"
    $destGrp = $row."Destination Entity Group" -replace "\|","-"
    [void]$sb.AppendLine("**Order $i** - $($row.'Order Detail Status')")
    [void]$sb.AppendLine("Part: $($row.Part) ($desc) | Qty: $($row.'Total Ordered Quantity') | Created: $($row.'Created At') | Ship By: $($row.'Ship By Date') | Hot Call: $($row.'Is Hot Call') | VOR: $($row.'Vehicle Off Road') | Type: $($row.'Request Type') | Group: $($row.'Part Group') | Route: $destGrp | To: $delTo")
    [void]$sb.AppendLine("")
    $i++
}

$sb.ToString() | Out-File -FilePath "ordermonitor.md" -Encoding UTF8 -NoNewline
Write-Host "Done. Sample rows: $($sample.Count)"
Write-Host "Size: $((Get-Item 'ordermonitor.md').Length) bytes"
