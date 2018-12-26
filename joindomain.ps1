$domain = "somethingnearyou.com"
$password = "Pa$$w0rd123" | ConvertTo-SecureString -asPlainText -Force
$username = "$domain\gobinath" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential