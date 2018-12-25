$Secure_String_Pwd = ConvertTo-SecureString "P@ssW0rD!" -AsPlainText -Force
Install-WindowsFeature -name AD-Domain-Services -IncludeManagementTools
Import-Module ADDSDEployment
Install-ADDSForest Install-ADDSForest -SafeModeAdministratorPassword $Secure_String_Pwd -CreateDnsDelegation:$false -DatabasePath 'C:\Windows\NTDS' -DomainMode 'Win2012R2' -DomainName 'somethingnearyou.com' -DomainNetbiosName 'something' -ForestMode 'Win2012R2' -InstallDns:$true -LogPath 'C:\Windows\NTDS' -NoRebootOnCompletion:$false -SysvolPath 'C:\Windows\SYSVOL' -Force:$true
