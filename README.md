Objective:

This project is designed to test the awareness of in-office corporate employees regarding the dangers of unknown USB devices. 
A select group of high-risk individuals, including managers and C-suite executives, will either find a flash drive on their desk
or see one lying around in the office. If plugged in, the flash drive automatically runs a script that alerts the IT manager.  

Premise: 

When an employee connects the flash drive, it runs a PowerShell script (autorun.ps1). This script collects basic information about
the computer, displays a warning message to simulate a security breach, and then informs the user that they've failed the security
test and will be added to security training. An email with the collected details is sent to the IT manager, logging the incident.  

How It Works:

Files:

autorun.ps1: This PowerShell script collects the computer’s name, serial number, and the timestamp. It then displays a brief, alarming
message suggesting a security breach before revealing that it’s a test for security training. The script also sends the collected 
information via email to the IT manager. 

autorun.inf: This file instructs the system to automatically execute the autorun.ps1 script using PowerShell when the flash drive is 
plugged in. 

xxx.bat: This batch file sets up a scheduled task that ensures the PowerShell script is executed when the system logs on, 
even if the autorun.inf is bypassed. This way, double-clicking the file will trigger the script. 

Summary  

Who: High-risk employees (managers, C-suite).

What: Test to check employee caution when encountering unknown devices. 

When: August 2024. 

How: A PowerShell script automatically runs when the flash drive is plugged in, collects system details, displays a warning,
and notifies the IT manager via email.
