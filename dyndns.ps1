$hostname = "testabs.dyndns.org"
$myip =  "192.168.0.34"
$username = "username"
$password = "password"
$secureStringPwd = $password | ConvertTo-SecureString -AsPlainText -Force 
$creds = New-Object System.Management.Automation.PSCredential -ArgumentList $username, $secureStringPwd
$curl = curl -Credential $creds  http://members.dyndns.org/nic/update?hostname=$hostname"&"myip=$myip"&"wildcard=NOCHG"&"mx=NOCHG"&"backmx=NOCHG
"Статус хоста. Имя: " + $hostname +" IP: " + $curl.Content
pause 30