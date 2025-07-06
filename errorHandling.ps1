# === CONFIGURATION ===
$source = "C:\SourceFolder"
$destination = "D:\BackupFolder"
$logPath = "C:\Logs\copy-log.txt"

# === Create folders if they don't exist ===
if (-not (Test-Path $destination)) {
    New-Item -ItemType Directory -Path $destination
}
if (-not (Test-Path (Split-Path $logPath))) {
    New-Item -ItemType Directory -Path (Split-Path $logPath)
}

# === LOG START ===
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
Add-Content -Path $logPath -Value "[$timestamp] Starting copy from $source to $destination"

# === Track copied files for rollback ===
$copiedFiles = @()

try {
    Get-ChildItem -Path $source -File | ForEach-Object {
        $destPath = Join-Path $destination $_.Name
        Copy-Item -Path $_.FullName -Destination $destPath
        $copiedFiles += $destPath
    }

    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Add-Content -Path $logPath -Value "[$timestamp] ✅ Successfully copied $($copiedFiles.Count) files."
}
catch {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    Add-Content -Path $logPath -Value "[$timestamp] ❌ Error: $_.Exception.Message"
    
    # ROLLBACK
    foreach ($file in $copiedFiles) {
        Remove-Item -Path $file -ErrorAction SilentlyContinue
    }

    Add-Content -Path $logPath -Value "[$timestamp] 🔄 Rollback completed."
}
