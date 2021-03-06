<#
	Compares what files are in each folder.
	.SideIndicator is replaced with text for readability. 
	.SideIndicator is default => or <=
#>

$hb18util = Get-ChildItem -Recurse -path C:\HeavyBid2017\UTILITY
$hb17util = Get-ChildItem -Recurse -path C:\HeavyBid\UTILITY
(Compare-Object -ReferenceObject $hb18util -DifferenceObject $hb17util |
    ForEach-Object {
        $_.SideIndicator = $_.SideIndicator -replace '=>','Not in 18' -replace '<=','Not in 17'
        $_
    } > V:\alex.kwie\Script\Reports\UTILdiff.txt )