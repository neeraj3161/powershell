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

# loops
for($i=1; $i -le 10 ;$i++)
{
    echo $i
}

foreach($item in Get-ChildItem)
{
    echo $item.BaseName

    if($item.BaseName -eq "abcd")
    {
        echo "we have abcd"
    }
    # diff conditionals -gt -lt -eq ge le
}

function Greet{
    param ($name)
    echo "Hello $name"
}

Greet -name "Neeraj"

# appending a file (this will always add a new line)

#  "some things written here" | Add-Content ".\abc.txt"

# reading a file 

# Get-Content ".\abc.txt"

# check if something exists

# if(Test-Path or jist add a file that u read)

# Bonus:
# Always set execution polucy to RemoteSigned to avoid issues running the program
# Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

