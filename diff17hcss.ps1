<#
	Compares what files are in each folder.
	.SideIndicator is replaced with text for readability. 
	.SideIndicator is default => or <=
#>

$hb18hcss = Get-ChildItem -Recurse -path C:\HeavyBid\HCSS
$hb17hcss = Get-ChildItem -Recurse -path C:\HeavyBid2017\HCSS
(Compare-Object -ReferenceObject $hb18hcss -DifferenceObject $hb17hcss |
    ForEach-Object {
        $_.SideIndicator = $_.SideIndicator -replace '=>','Not in 18' -replace '<=','Not in 17'
        $_
    } > V:\alex.kwie\Script\Reports\HCSSdiff.txt )