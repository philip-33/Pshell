# This script is for flipping (restarting) windows explorer.
# Only tested with Win10Edu.1703
# 
# Windows will normally attempt to restart explorer.exe automatically if it closes.

Clear-host
$process = Get-Process explorer

if($process.Name -eq 'explorer')
{
    write-host "Explorer.exe is running. Stopping it now."
    Stop-Process -Name explorer
}