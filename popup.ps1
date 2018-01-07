<#
.Synopsis
This is used to put a popup box on the users screen.  
.Description
collects information and creates a popupbox for the customer to aid in communication. 
.Example
.\popup.ps1 -computername computer -messagebody this is a test message -seconds 600
Runs the script
#>
            
            Param (
               [parameter(Mandatory=$true)][string]$computername,
               [parameter(Mandatory=$true)][string]$messagebody,
               [parameter(Mandatory=$true)][int]$time
               )
                                     
               Invoke-Command -command {

                    msg.exe * /TIME:$args[0] /v $args[1] 

                } -computerName $computername -ArgumentList $time,$messagebody -ThrottleLimit 1