$hb18bin = Get-ChildItem -path C:\HeavyBid\BIN\ -Recurse 
$hbWSbin = Get-ChildItem -path C:\HeavyBidWS\BIN\ -Recurse 
Compare-Object $hb18bin $hbWSbin -PassThru -Property Name, Length | 
  Sort-Object Name | 
    Format-Table FullName, LastWriteTime, Length	
	