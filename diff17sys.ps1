<#
	Compares what files are in each folder.
	.SideIndicator is replaced with text for readability. 
	.SideIndicator is default => or <=
#>

$hb18sys = Get-ChildItem -Recurse -path C:\HeavyBid\SYS
$hb17sys = Get-ChildItem -Recurse -path C:\HeavyBid2017\SYS
(Compare-Object -ReferenceObject $hb18sys -DifferenceObject $hb17sys |
    ForEach-Object {
        $_.SideIndicator = $_.SideIndicator -replace '=>','Not in 18' -replace '<=','Not in 17'
        $_
    } > V:\alex.kwie\Script\Reports\SYSdiff.txt )