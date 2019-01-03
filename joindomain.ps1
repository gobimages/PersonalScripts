$domain = "somethingnearyou.com"
$password = "Mageswaran225" | ConvertTo-SecureString -asPlainText -Force
$username = "$domain\gobinath" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential
