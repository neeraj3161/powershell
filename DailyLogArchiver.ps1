# === CONFIG ===
$logRoot = "C:\Logs"
$archiveDate = Get-Date -Format "yyyy-MM-dd"
$archiveFolder = "$logRoot\Archive\$archiveDate"
$zipPath = "$archiveFolder.zip"
$mainLog = "$logRoot\archive.log"

try {
    if (-not (Test-Path $archiveFolder)) {
        New-Item -Path $archiveFolder -ItemType Directory | Out-Null
    }

    $logFiles = Get-ChildItem -Path $logRoot -Filter *.log -File
    $movedCount = 0

    foreach ($file in $logFiles) {
        Move-Item -Path $file.FullName -Destination $archiveFolder
        $movedCount++
    }

    Compress-Archive -Path "$archiveFolder\*" -DestinationPath $zipPath -Force

    "$archiveDate : ✅ Moved $movedCount files and zipped to $zipPath" | Add-Content $mainLog
}
catch {
    $errorMessage = $_.Exception.Message
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $body = "❌ Log Archiver Failed at $timestamp`n`nError: $errorMessage"

    # Email (Set your SMTP details)
    Send-MailMessage -From "admin@yourdomain.com" `
                     -To "you@example.com" `
                     -Subject "❌ DailyLogArchiver.ps1 Failed" `
                     -Body $body `
                     -SmtpServer "smtp.yourdomain.com" `
                     -Port 587 `
                     -UseSsl `
                     -Credential (Get-Credential)
}
