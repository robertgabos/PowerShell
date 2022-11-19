## Get & export CSV list of ADDS Domain Admins

Get-ADGroupMember "Domain Admins" | Get-AdUser -Property LastLogonDate | select name,distinguishedName,LastLogonDate | Export-CSV .\ad-domain-admins.csv
