clear-host

Get-Command -Module PSScheduledJob | Sort-Object Noun

$diario = New-JobTrigger -Daily -At 3am
$umavez = New-JobTrigger -Once -At (Get-Date).AddHours(1)
$semanal = New-JobTrigger -Weekly -DaysOfweek Monday -At 6pm

Register-ScheduledJob -Name Backup -Trigger $diario -ScriptBlock {
Copy-Item C:\SCRIPTS\*.* C:\OneDrive\Scripts\ -Recurse -Force
}

Get-ScheduledJob