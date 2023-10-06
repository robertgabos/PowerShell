# The PowerShell Gallery requires the use of Transport Layer Security (TLS) 1.2 to help secure communication.
# Windows 10 and Windows Server 2016 don't support using TLS 1.2 in Windows PowerShell by default.
# So, you need to enable TLS 1.2 to download PowerShell Gallery content.

# To enable TLS 1.2 for the current PowerShell prompt, run the following command:
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# To fix this issue permanently on a computer, you need to create registry keys. You can run the following two commands to create the necessary keys:

Set-ItemProperty -Path 'HKLM:\SOFTWARE\Wow6432Node\Microsoft\.NetFramework\v4.0.30319'-Name 'SchUseStrongCrypto' -Value '1' -Type DWord

Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\.NetFramework\v4.0.30319' -Name 'SchUseStrongCrypto' -Value '1' -Type
