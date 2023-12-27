@echo off
name='$env:Username'
start /MIN powershell powershell.exe -WindowStyle hidden -ExecutionPolicy Bypass C:\Users\$name\script\system.ps1



