# normal notification
Add-Type -AssemblyName PresentationFramework
[System.Windows.MessageBox]::Show("Your backup is complete!", "Notification", 'OK', 'Information')


# using a lib
Install-Module -Name BurntToast -Force -Scope CurrentUser
Import-Module BurntToast
New-BurntToastNotification -Text "Task Complete", "Your PowerShell script has finished running."

# After backup is done
New-BurntToastNotification -Text "Backup Complete", "Your files have been safely backed up."
$imgPath = "C:\Path\To\icon.png"
New-BurntToastNotification -AppLogo $imgPath -Text "Alert", "Something important happened."
