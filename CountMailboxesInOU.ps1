(Get-Mailbox -OrganizationalUnit "ObjectPath" -ResultSize unlimited | Get-MailboxStatistics | Select-Object DisplayName,TotalItemSize,ItemCount,LastLogonTime).count
