﻿$wshell = New-Object -ComObject WScript.Shell

$wshell | Get-Member

$wshell.Popup("Esse curso e muito Legal")

$wshell.Run("Notepad")
Start-Sleep 2
$wshell.SendKeys("Esse curso e muito Legal")