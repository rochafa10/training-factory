$csv = Import-Csv "ordermonitor_2026_01_30_17_02_27.csv"
$sb = [System.Text.StringBuilder]::new()

[void]$sb.AppendLine("# Order Monitor Export - Newburgh DC 3694")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("Export Date: January 30, 2026 | Total Orders: $($csv.Count)")
[void]$sb.AppendLine("")
[void]$sb.AppendLine("| Created At | Part | Description | Status | Hot Call | VOR | Request Type | Part Group | Dest Group | Deliver To | Ship By | Pick Type | Qty |")
[void]$sb.AppendLine("|---|---|---|---|---|---|---|---|---|---|---|---|---|")

foreach ($row in $csv) {
    $desc = $row."Part Description" -replace "\|","-"
    $delTo = $row."Deliver To" -replace "\|","-"
    $destGrp = $row."Destination Entity Group" -replace "\|","-"
    $line = "| $($row.'Created At') | $($row.Part) | $desc | $($row.'Order Detail Status') | $($row.'Is Hot Call') | $($row.'Vehicle Off Road') | $($row.'Request Type') | $($row.'Part Group') | $destGrp | $delTo | $($row.'Ship By Date') | $($row.'Pick Type') | $($row.'Total Ordered Quantity') |"
    [void]$sb.AppendLine($line)
}

$sb.ToString() | Out-File -FilePath "ordermonitor.md" -Encoding UTF8 -NoNewline
Write-Host "Done. Rows: $($csv.Count)"
Write-Host "Size: $((Get-Item 'ordermonitor.md').Length) bytes"
