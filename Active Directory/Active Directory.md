## Get & export CSV list of ADDS Domain Admins
https://docs.microsoft.com/en-us/powershell/module/exchange/set-unifiedgroup#:~:text=The%20HiddenFromExchangeClientsEnabled%20switch%20specifies%20whether%20the%20Microsoft%20365,Microsoft%20365%20Group%20is%20hidden%20from%20Outlook%20experiences
Get-ADGroupMember "Domain Admins" | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | Export-CSV .\ad-domain-admins.csv
