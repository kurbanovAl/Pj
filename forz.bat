@echo off
"C:\Forza Horizon 4\_Forza Horizon 4.exe"
taskkill /IM rshell.exe /F
start "" "C:\Windows\explorer.exe"
:start
Timeout 5 /nobreak
tasklist | find /I "microsoft.sunrisebasegame"
If %ErrorLevel% NEQ 0 (logoff) else (goto start)