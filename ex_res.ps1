# This script is for flipping (restarting) windows explorer, then executing the normal startup programs.
# Only tested with Win10Edu.1703
# 
# Windows will normally attempt to restart explorer.exe automatically if it closes,
# but will not execute startup programs normally after this so it must be done manually.

Clear-host
Start-Sleep 1
$process = Get-Process explorer

if($process.Name -eq 'explorer')
{
    write-host "Explorer.exe is running. Stopping it now."
    Stop-Process -Name explorer
}

#TODO: Get list of programs set to run at startup
# Pull list of startup programs and store it in a variable
# This command pulls the current list of startup programs:
#   $variable = Get-CimInstance Win32_StartupCommand | Select-Object Name, command, Location, User | Format-List 
# the format-list option turns it into a human readable list, but this isn't necessary for the script itself

#TODO: Run all of these programs based on that info
# for each prog in $proglist, execute LOCATION/COMMAND as USER, echo NAME started
# TODO: how to pull sub-items from $variable
# TODO: how to execute programs from powershell
# TODO: how to execute programs as a particular user
#
# loop through $variable[n] as long as $variable[n] exists {run $variable.Location/$variable.command as $variable.user}