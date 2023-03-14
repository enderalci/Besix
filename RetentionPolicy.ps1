#WrittenByEnderAlciEnterConsultBV

Connect-ExchangeOnline

$Path = "C:\TEMP\retention.csv"
$Delimiter = "^"

Get-Mailbox -ResultSize Unlimited | Select-Object UserPrincipalName, RecipientTypeDetails, RetentionPolicy | Export-Csv $Path -Delimiter $Delimiter -NoTypeInformation