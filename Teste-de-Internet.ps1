#Teste de Internet
Clear
$conn = (Test-Connection www.google.com -Count 1 -Quiet)
If($conn -eq "true") {Write-Host "Internet Funcionando" -ForegroundColor Yellow}
