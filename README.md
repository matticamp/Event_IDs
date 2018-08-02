# Event_IDs
PowerShell script to quickly retrieve critical event IDs from Event Viewer.
Based on an Eric Conrad's script, referenced by John Strand in the 
following YouTube video: https://www.youtube.com/watch?v=fEip9gl2MTA&t=1718s

I aded two contributions to the script:
   a) The possibility to export the event IDs to a csv file, by piping the retrieved event IDs to the Export-Csv command.
    b) An extra optional line of code finalized to retrieve event IDs fromn Sysinternals' Sysmon, if it's installed in the system and is running as a service, for additional monitoring/blue teaming purposes.
