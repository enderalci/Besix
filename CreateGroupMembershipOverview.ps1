$Username = "andy.vanhaverbeke@besix.com"

$DistributionGroups= Get-DistributionGroup | where { (Get-DistributionGroupMember $_.Name | foreach {$_.PrimarySmtpAddress}) -contains "$Username"}

$DistributionGroups