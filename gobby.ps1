Install-WindowsFeature -name AD-Domain-Services -IncludeManagementTools
Import-Module ADDSDEployment
Install-ADDSForest 
-CreateDnsDelegation:$false 
-DatabasePath 'C:\Windows\NTDS' 
-DomainMode 'Win2012R2' 
-DomainName 'somethingnearyou.com' 
-DomainNetbiosName 'somethingnearyou' 
-ForestMode 'Win2012R2' 
-InstallDns:$true 
-LogPath 'C:\Windows\NTDS' 
-NoRebootOnCompletion:$false 
-SysvolPath 'C:\Windows\SYSVOL' 
-Force:$true