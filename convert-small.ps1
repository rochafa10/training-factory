$csv = Import-Csv "ordermonitor_2026_01_30_17_02_27.csv"

# Get a representative sample: pick rows from each status
$statuses = $csv | Group-Object "Order Detail Status"
$sample = @()

foreach ($group in $statuses) {
    $take = [Math]::Min($group.Count, [Math]::Max(5, [Math]::Ceiling(200 * $group.Count / $csv.Count)))
    $sample += $group.Group | Select-Object -First $take
}

# Sort by Created At descending
$sample = $sample | Sort-Object { [datetime]$_."Created At" } -Descending

$sb = [System.Text.StringBuilder]::new()
[void]$sb.AppendLine("# Order Monitor Export - Newburgh DC 3694")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("Export Date: January 30, 2026")
[void]$sb.AppendLine("Total Orders in Full Export: $($csv.Count)")
[void]$sb.AppendLine("Sample Size: $($sample.Count) representative rows")
[void]$sb.AppendLine("")

# Status summary
[void]$sb.AppendLine("## Status Summary (Full Dataset)")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("| Status | Count |")
[void]$sb.AppendLine("|---|---|")
foreach ($s in ($statuses | Sort-Object Count -Descending)) {
    [void]$sb.AppendLine("| $($s.Name) | $($s.Count) |")
}
[void]$sb.AppendLine("")

# Request Type summary
$reqTypes = $csv | Group-Object "Request Type"
[void]$sb.AppendLine("## Request Type Summary (Full Dataset)")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("| Request Type | Count |")
[void]$sb.AppendLine("|---|---|")
foreach ($r in ($reqTypes | Sort-Object Count -Descending)) {
    [void]$sb.AppendLine("| $($r.Name) | $($r.Count) |")
}
[void]$sb.AppendLine("")

# Hot calls and VOR counts
$hotCalls = ($csv | Where-Object { $_."Is Hot Call" -eq "true" }).Count
$vor = ($csv | Where-Object { $_."Vehicle Off Road" -eq "true" }).Count
[void]$sb.AppendLine("## Priority Counts (Full Dataset)")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("- Hot Calls: $hotCalls")
[void]$sb.AppendLine("- Vehicle Off Road (VOR): $vor")
[void]$sb.AppendLine("")

# Sample data table
[void]$sb.AppendLine("## Order Detail Sample ($($sample.Count) rows)")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("| Created At | Part | Description | Status | Hot Call | VOR | Request Type | Part Group | Dest Group | Deliver To | Ship By | Pick Type | Qty |")
[void]$sb.AppendLine("|---|---|---|---|---|---|---|---|---|---|---|---|---|")

foreach ($row in $sample) {
    $desc = $row."Part Description" -replace "\|","-"
    $delTo = $row."Deliver To" -replace "\|","-"
    $destGrp = $row."Destination Entity Group" -replace "\|","-"
    $line = "| $($row.'Created At') | $($row.Part) | $desc | $($row.'Order Detail Status') | $($row.'Is Hot Call') | $($row.'Vehicle Off Road') | $($row.'Request Type') | $($row.'Part Group') | $destGrp | $delTo | $($row.'Ship By Date') | $($row.'Pick Type') | $($row.'Total Ordered Quantity') |"
    [void]$sb.AppendLine($line)
}

$sb.ToString() | Out-File -FilePath "ordermonitor.md" -Encoding UTF8 -NoNewline
Write-Host "Done. Sample rows: $($sample.Count)"
Write-Host "Size: $((Get-Item 'ordermonitor.md').Length) bytes"
