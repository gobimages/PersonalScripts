$domain = "dpwho.ad"
$password = "D9wDom@in@dm!n$" | ConvertTo-SecureString -asPlainText -Force
$username = "$domain\dcadmin" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential
