$array = @("Jenkins")
for ($i=0; $i -lt $array.length; $i++) 
{

Write-Host $array.length

$T = Get-Service -Name  $array[$i]
$T 
$T.Status
    if ($T.Status -eq "Running")
    {
    
        write-host "inside"
       

        Stop-Service -InputObject $T
        Write-Host $T
        Write-Host $T.Status
        ################################STart LOG####################################
        Get-Date| Out-File -encoding ASCII -Append C:\NotBackedUp\Stopped1.txt
        Add-Content C:\NotBackedUp\Stopped1.txt -Value $T
        #Add-Content D:\temp\Beamnet\StopService\Staopped1.txt -Value $T.Status 
        Add-Content C:\NotBackedUp\Stopped1.txt -Value "###############################"
        Add-Content C:\NotBackedUp\Stopped1.txt -Value "Serives Stopped"
        Add-Content C:\NotBackedUp\Stopped1.txt -Value "###############################"

        

        ###################################################################################################
       # Write-Host "HII"
      }  
      Else 
      { 
        #($array[$i].Status -eq "Running")
        Write-Host "Hi"

           Write-Host $T
        Write-Host $T.Status

        #$services = Get-Service -Name 'Integrity Processor eFile','Integrity Processor Monitoring','Integrity Processor OtherTasks','Integrity Processor OutgoingCommunications','Integrity Processor SAIG','Integrity Processor RLS','Integrity Processor SDR'

        #write-host $array[$i].Status

        #Start-Service -InputObject $data


         Get-Date| Out-File -encoding ASCII -Append C:\NotBackedUp\Stopped1.txt
         Add-Content C:\NotBackedUp\Stopped1.txt -Value "Process Details"
        Add-Content C:\NotBackedUp\Stopped1.txt -Value $T 

        #Add-Content D:\temp\Beamnet\StopService\Staopped1.txt -Value $T.Status 
        Add-Content C:\NotBackedUp\Stopped1.txt -Value "###############################"
        Add-Content C:\NotBackedUp\Stopped1.txt -Value "Already Stopped" 
        Add-Content C:\NotBackedUp\Stopped1.txt -Value "###############################"

      

        }

         
    }
