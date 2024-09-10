# Collect information
$computerName = $env:COMPUTERNAME
$serialNumber = Get-WmiObject -Class Win32_BIOS | Select-Object -ExpandProperty SerialNumber
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Log collected information
Write-Output "Collected Information:"
Write-Output "Computer Name: $computerName"
Write-Output "Serial Number: $serialNumber"
Write-Output "Timestamp: $timestamp"

# Display Custom Warning Message
Write-Output ""
Write-Output "*********************************************"
Write-Output "***** ALL OF YOUR MONEY HAS BEEN DRAINED *****"
Write-Output "***** FROM YOUR ACCOUNT. *****"
Write-Output "*********************************************"
Write-Output ""
Start-Sleep -Seconds 4  # Pause for effect
Write-Output "Jk, but you are being added to the security training program."
Write-Output "You have failed the flash drive test."
Write-Output ""

# Prepare email details
$smtpServer = "smtp.gmail.com" # Gmail SMTP server
$smtpPort = 587 # Port for TLS
$smtpFrom = "example@example.com"         # Your new email address
$smtpTo = "example2@example.com"           # Your work email address
$smtpUsername = "example@example.com"     # Your new email address
$smtpPassword = "Password"         # Your new app-specific password

$messageSubject = "USB Drive Test Alert"
$messageBody = "Computer Name: $computerName`nSerial Number: $serialNumber`nTimestamp: $timestamp"

# Create the email message
$message = New-Object system.net.mail.mailmessage
$message.from = $smtpFrom
$message.To.add($smtpTo)
$message.Subject = $messageSubject
$message.Body = $messageBody

# Set up the SMTP client
$smtp = New-Object Net.Mail.SmtpClient($smtpServer, $smtpPort)
$smtp.Credentials = New-Object System.Net.NetworkCredential($smtpUsername, $smtpPassword)
$smtp.EnableSsl = $true

# Log sending email
Write-Output "Sending email..."
try {
    # Send the email
    $smtp.Send($message)
    Write-Output "Email sent successfully."
} catch {
    Write-Output "Failed to send email. Error: $_"
} 
# Pause to keep the window open
Write-Output "Press any key to exit..."
[void][System.Console]::ReadKey($true)
