@echo Disabled Key(ALT, CTRL, WIN)
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map" /t REG_BINARY /d "00000000000000000800000000003800000038e000001d0000001de000005be000005ce000000000" /f
echo Disabled Key(ALT, CTRL, WIN)
echo --------------
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f 
reg add "HKEY_USERS\.DEFAULT\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "506" /f
echo Disable key tapping!
pause


@echo Activated KEY (ALT,CTRL,WIN) 
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\Keyboard Layout" /v "Scancode Map" /f
echo Activated KEY (ALT,CTRL,WIN)
echo --------------
reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "510" /f 
reg add "HKEY_USERS\.DEFAULT\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "510" /f
echo Enable key tapping!
pause
