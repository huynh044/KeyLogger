@echo off
set name=%username%
start /MIN powershell powershell.exe -WindowStyle hidden -ExecutionPolicy Bypass C:\Users\%name%\script\system.ps1



