$filePath = "D:\ipone_backup_062025"

# list all files
$allFilesFromPath  = Get-ChildItem -Path $filePath
echo $allFilesFromPath

# changing a directory
$filePath = "D:\ipone_backup_062025\201608__"
Set-Location $filePath

$changedDirFiles = Get-ChildItem
echo $changedDirFiles

# creating a folder
# this already exists

# New-Item -Path "abcd" -ItemType Directory

# creating a file

# this already exists
# New-Item -Path "xyz.txt" -ItemType File

# deleting a item

# Remove-Item ".\abcd"

# moving an item

# New-Item "abc" -ItemType Directory
# Move-Item ".\SJIU0904.JPEG" ".\abc\SJIU0904.JPEG"

# rename a file or folder

# Rename-Item ".\abc" ".\abcd"