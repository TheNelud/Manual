rem === Останавливаем службу Windows Update
net stop wuauserv
rem === Удаляем идентификационные данные клиента Windows Update
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v PingID /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v AccountDomainSid /f


reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v SusClientId /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /v SusClientIDValidation /f
rem === Удаляем файловый кэш клиента Windows Update
del /f /s /q %windir%\SoftwareDistribution*
rem === Запускаем службу Windows Update
net start wuauserv
rem === Вызываем форсированную перерегистрацию клиента Windows Update
wuauclt.exe /resetauthorization /detectnow
pause
