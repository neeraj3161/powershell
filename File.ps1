# We will learn all commands with files

# Array level methods on Get-Content

Set-Location "D:\PRACTICE\powershell"

# create a file
# to avoid file recreation error u can check if a file already exists
if(-not (Test-Path "D:\PRACTICE\powershell\abc.txt"))
{
    New-Item "abc.txt"


}
else{
    echo "file already exists"
    "This is a new line to be appended" | Add-Content ".\abc.txt"
}

# Array methods for a file

$fileContent = Get-Content ".\abc.txt"

# prints the number of lines
echo $fileContent.Count
echo $fileContent.Length

# get the first line
echo $fileContent[0]

# get the last line

echo $fileContent[-1]

# looping through lines

foreach($line in $fileContent)
{
    echo $line
}


# select lines by index range so this is print index 1 and 2
echo $fileContent[1..2]

# filter or get lines only containing matching text
echo $fileContent | Where-Object {$_ -like "*2323*"}

# reversing the content
[array]::Reverse($fileContent)
echo $fileContent

# sort the content in alphabetical order

echo $fileContent | Sort-Object



# string methods
# foreach ($line in $content) {
#     $line.ToUpper()            # Convert to uppercase
#     $line.ToLower()            # Convert to lowercase
#     $line.Trim()               # Remove leading/trailing spaces
#     $line.Contains("error")    # Check if line contains a word
#     $line.Replace("foo","bar") # Replace word
#     $line.StartsWith("INFO")   # Check start
#     $line.EndsWith(".log")     # Check end
#     $line.Split(" ")           # Split line into words
# }

