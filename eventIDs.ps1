<# PowerShell script created by Mattia Campagnano on Wed Jun 13 19:06:58 EDT 2018, to collect critical event 
    IDs from Event Viewer for recon or blue teaming purposes.
    
    Based on an Eric Conrad's script, referenced by John Strand in the 
    following YouTube video: https://www.youtube.com/watch?v=fEip9gl2MTA&t=1718s
#>

# Get all specified events IDs from the Security log 

Get-WinEvent -FilterHashTable @{LogName="Security"; ID=4625,4674,4720,4722,4738,4732,1102} | Export-CSv C:\Security.csv

<# Optional: use only if Sysinternals' Sysmon is installed and running as a service. This is my first personal addition to the script.

   Get-WinEvent -FilterHashTable @{LogName="Microsoft-Windows-Sysmon/Operational"; ID=1,2,3,6,7,8,9} | Export-Csv C:\Sysmon.csv
#>


<# Get all specified events IDs from the System log
 My second humble contribution I added is the Export-Csv command that exports all the specified event IDs to a .csv file. Enjoy!!
 #>

Get-WinEvent -FilterHashTable @{LogName="System"; ID=7030,10000,100001,20001,20002,20003,24756,24577,24579} | Export-Csv C:\System.csv

#Get-WinEvent -FilterHashTable @{LogName="Microsoft-Windows.Windows Firewall With Advanced Security/Firewall"; ID=2003}
