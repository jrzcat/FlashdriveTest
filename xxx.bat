@echo off
schtasks /create /tn "RunUSBScript" /tr "powershell.exe -File %~d0\autorun.ps1" /sc onlogon /f
