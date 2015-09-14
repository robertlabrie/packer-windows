& secedit /export /cfg $ENV:TEMP\secpol.cfg
$payload = (Get-Content $ENV:TEMP\secpol.cfg) -join "`n"
$payload = $payload.Replace("PasswordComplexity = 1","PasswordComplexity = 0")
$payload | Out-File $ENV:TEMP\newsec.cfg -Encoding ascii
& secedit /configure /db C:\Windows\security\new.sdb /cfg $ENV:TEMP\secpol.cfg /areas SEcURITYPOLICY
& net user vagrant "vagrant" /add
& net localgroup "administrators" "vagrant" /add
gwmi win32_useraccount -Filter 'Name="vagrant"' | Set-WmiInstance -Arguments @{'PasswordExpires'='FALSE'}