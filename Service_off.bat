chcp 1251
@echo  DHCP-клиент
REG add "HKLM\SYSTEM\CurrentControlSet\Services\Dhcp" /v "Start" /t REG_DWORD /d 4 /f     #Что бы включить вместо 4 нужна 1
@echo  Обнаружение SSDP
REG add "HKLM\SYSTEM\CurrentControlSet\Services\SstpSvc" /v "Start" /t REG_DWORD /d 4 /f
@echo  DNS-клиент
REG add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache" /v "Start" /t REG_DWORD /d 4 /f

@echo  Бредмауэр v1
REG add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess" /v "Start" /t REG_DWORD /d 4 /f
@echo Бредмауэр v2
REG add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\DomainProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
@echo Бредмауэр v3
REG add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\Parameters\FirewallPolicy\StandardProfile" /v "EnableFirewall" /t REG_DWORD /d 0 /f
@echo Бредмауэр v4
REG add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\mpssvc" /v "Start" /t REG_DWORD /d 4 /f

@echo  Microsoft App-V Client
sc config "AppVClient"  start= disabled
sc stop "AppVClient"
@echo  OpenSSH Authentication Agent 
sc config "ssh-agent" start= disabled
sc stop "ssh-agent" 
@echo  Quality Windows Audio Video Experience 
sc config "QWAVE" start= disabled
sc stop "QWAVE" 
@echo  Shared PC Account Manager 
sc config "shpamsvc" start= disabled
sc stop "shpamsvc" 
@echo  Xbox Accessory Management Service 
sc config "XboxGipSvc" start= disabled
sc stop "XboxGipSvc" 
@echo  Xbox Game Monitoring 
sc config "xbgm" start= disabled
sc stop "xbgm" 
@echo  Автонастройка WWAN 
sc config "WwanSvc" start= disabled
sc stop "WwanSvc" 
@echo  Автономные файлы
sc config "CscService" start= disabled
sc stop "CscService" 
@echo  Биометрическая служба Windows 
sc config "WbioSrvc" start= disabled
sc stop "WbioSrvc" 
@echo  Брандмауэр Защитника Windows 
sc config "mpssvc" start= disabled
sc stop "mpssvc" 
@echo  Группировка сетевых участников 
sc config "p2psvc" start= disabled
sc stop "p2psvc" 
@echo  Диспетчер автоматических подключени... 
sc config "RasAuto" start= disabled
sc stop "RasAuto" 
@echo  Диспетчер проверки подлинности Xbox... 
sc config "XblAuthManager" start= disabled
sc stop "XblAuthManager" 
@echo  Ловушка SNMP
sc config "SNMPTRAP" start= disabled
sc stop "SNMPTRAP" 
@echo  Маршрутизация и удаленный доступ 
sc config "RemoteAccess" start= disabled
sc stop "RemoteAccess" 
@echo  Обнаружение SSDP
sc config "SSDPSRV" start= disabled
sc stop "SSDPSRV" 
@echo  Общий доступ к подключению к Интерн... 
sc config "SharedAccess" start= disabled
sc stop "SharedAccess" 
@echo  Поддержка элемента панели управлени... 
sc config "wercplsupport" start= disabled
sc stop "wercplsupport" 
@echo  Публикация ресурсов обнаружения фун... 
sc config "FDResPub" start= disabled
sc stop "FDResPub" 
@echo  Служба автонастройки WLAN
sc config "WlanSvc" start= disabled
sc stop "WlanSvc" 
@echo  Служба виртуализации взаимодействия... 
sc config "UevAgentService" start= disabled
sc stop "UevAgentService" 
@echo  Служба географического положения 
sc config "lfsvc" start= disabled
sc stop "lfsvc" 
@echo  Служба звукового шлюза Bluetooth 
sc config "BTAGService" start= disabled
sc stop "BTAGService" 
@echo  Служба инициатора Майкрософт iSCSI 
sc config "MSiSCSI" start= disabled
sc stop "MSiSCSI" 
@echo  Служба компоновщика объемного звука 
sc config "VacSvc" start= disabled
sc stop "VacSvc" 
@echo  Служба кошелька
sc config "WalletService" start= disabled
sc stop "WalletService" 
@echo  Служба общего доступа к портам Net.Tcp 
sc config "NetTcpPortSharing" start= disabled
sc stop "NetTcpPortSharing" 
@echo  Служба общих сетевых ресурсов проиг... 
sc config "WMPNetworkSvc" start= disabled
sc stop "WMPNetworkSvc" 
@echo  Служба поддержки Bluetooth 
sc config "bthserv" start= disabled
sc stop "bthserv" 
@echo  Служба помощника по совместимости п... 
sc config "PcaSvc" start= disabled
sc stop "PcaSvc" 
@echo  Служба регистрации ошибок Windows 
sc config "WerSvc" start= disabled
sc stop "WerSvc" 
@echo  Служба управления радио 
sc config "RmSvc" start= disabled
sc stop "RmSvc" 
@echo  Служба шифрования дисков BitLocker 
sc config "BDESVC" start= disabled
sc stop "BDESVC" 
@echo  Сохранение игр на Xbox Live 
sc config "XblGameSave" start= disabled
sc stop "XblGameSave" 
@echo  Телефония 
sc config "TapiSrv" start= disabled
sc stop "TapiSrv" 
@echo  Телефонная связь 
sc config "PhoneSvc" start= disabled
sc stop "PhoneSvc" 
@echo  Удаленный реестр 
sc config "RemoteRegistry" start= disabled
sc stop "RemoteRegistry"

pause
