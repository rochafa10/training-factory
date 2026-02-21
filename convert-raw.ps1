$csv = Import-Csv "ordermonitor_2026_01_30_17_02_27.csv"

$sample = $csv | Select-Object -First 1000

$sb = [System.Text.StringBuilder]::new()
[void]$sb.AppendLine("# Order Monitor Export - Newburgh DC 3694")
[void]$sb.AppendLine("")

$i = 1
foreach ($row in $sample) {
    $desc = $row."Part Description" -replace "\|","-"
    $delTo = $row."Deliver To" -replace "\|","-"
    $destGrp = $row."Destination Entity Group" -replace "\|","-"
    [void]$sb.AppendLine("## Order $i")
    [void]$sb.AppendLine("- Created At: $($row.'Created At')")
    [void]$sb.AppendLine("- Part: $($row.Part)")
    [void]$sb.AppendLine("- Description: $desc")
    [void]$sb.AppendLine("- Status: $($row.'Order Detail Status')")
    [void]$sb.AppendLine("- Hot Call: $($row.'Is Hot Call')")
    [void]$sb.AppendLine("- Vehicle Off Road: $($row.'Vehicle Off Road')")
    [void]$sb.AppendLine("- Request Type: $($row.'Request Type')")
    [void]$sb.AppendLine("- Part Group: $($row.'Part Group')")
    [void]$sb.AppendLine("- Destination Entity Group: $destGrp")
    [void]$sb.AppendLine("- Deliver To: $delTo")
    [void]$sb.AppendLine("- Ship By Date: $($row.'Ship By Date')")
    [void]$sb.AppendLine("- Pick Type: $($row.'Pick Type')")
    [void]$sb.AppendLine("- Pick Location: $($row.'Pick Location')")
    [void]$sb.AppendLine("- Qty: $($row.'Total Ordered Quantity')")
    [void]$sb.AppendLine("- Picked By: $($row.'Picked By')")
    [void]$sb.AppendLine("- Pick Completed At: $($row.'Pick Completed At')")
    [void]$sb.AppendLine("- Stage Completed At: $($row.'Stage Completed At')")
    [void]$sb.AppendLine("- Loaded At: $($row.'Loaded At')")
    [void]$sb.AppendLine("- Shipped At: $($row.'Shipped At')")
    [void]$sb.AppendLine("- VIN: $($row.'Parent Serial/VIN')")
    [void]$sb.AppendLine("- Carrier: $($row.Carrier)")
    [void]$sb.AppendLine("- Is Milk Run: $($row.'Is Milk Run')")
    [void]$sb.AppendLine("")
    $i++
}

[System.IO.File]::WriteAllText("ordermonitor.md", $sb.ToString(), (New-Object System.Text.UTF8Encoding $false))
Write-Host "Done. Orders: $($sample.Count)"
Write-Host "Size: $((Get-Item 'ordermonitor.md').Length) bytes"
