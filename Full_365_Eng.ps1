## Login To Admin Account To Manage Permissions ##
Import-Module exchangeonlinemanagement
$m=read-host "enter your admin mail"
Connect-ExchangeOnline -UserPrincipalName $m

## In each identity&user you would need to write only the username no need for the domain ##
## Identity-the user with the requted calendar/contact. ##
## User-The user we want to have access to the calendar/contact.  ##
    
    function Show-Menu
{
    param (
        [string]$Title = 'Daniel Ishayev 365 Menu'
    )
    Clear-Host
    Write-Host "================ Daniel Ishayev 365 Menu ================"
    
    Write-Host "1: Get Contacts Permissions."

    Write-Host "2: Get Calendar Permissions."

    Write-Host "3: Add Contacts Permissions."

    Write-Host "4: Add Calendar Permissions."

    Write-Host "5: Remove Contacts Permissions."

    Write-Host "6: Remove Calendar Permissions."

    Write-Host "Q: Press 'Q' to quit."
}

do
 {
  
   Show-Menu
     $selection = Read-Host "Please make a selection:"
     switch ($selection)
     {
         '1' {
              $identity=Read-Host "Please enter identity"
              $test=':\contacts'
              $g=$identity+$test
              Get-MailboxFolderPermission $g
         } '2' {
              $identity=Read-Host "Please enter identity"
              $test=':\calendar'
              $g=$identity+$test
              Get-MailboxFolderPermission $g
         } '3' {
              $identity=Read-Host "Please enter identity"
              $user=read-host "Please Enter User"
              $test=':\contacts'
              $g=$identity+$test
              
              function Show-Menu1
{
    param (
        [string]$Title1 = 'Daniel Ishayev 365 Menu'
    )
    Clear-Host
    Write-Host "================ Daniel Ishayev 365 Menu ================"
    
    Write-Host "1: Add Author Permissions."
    Write-Host "2: Add Contributor Permissions."
    Write-Host "3: Add Editor Permissions."
    Write-Host "4: Add None Permissions."
    Write-Host "5: Add NonEditingAuthor Permissions."
    Write-Host "6: Add Owner Permissions."
    Write-Host "7: Add PublishingAuthor Permissions."
    Write-Host "8: Add PublishingEditor Permissions."
    Write-Host "9: Add Reviewer Permissions."
}

do
 {
  
   Show-Menu1
     $selection1 = Read-Host "Please make a selection:"
     switch ($selection1)
          {
         '1' {
               $right="Author"
               $selection1='z'
         } '2' {
               $right="Contributor"
               $selection1='z'
         } '3' {
               $right="Editor"
               $selection1='z'
         }
           '4' {
               $right="None"
               $selection1='z'
         }
           '5' {
               $right="NonEditingAuthor"
               $selection1='z'
         }
           '6' {
               $right="Owner"
               $selection1='z'
         }
           '7' {
               $right="PublishingAuthor"
               $selection1='z'
         }
           '8' {
               $right="PublishingEditor"
               $selection1='z'

         }
           '9' {
               $right="Reviewer"
               $selection1='z'
         }

     }
     pause
 }

   
until ($selection1 -eq 'z')

               Add-MailboxFolderPermission -Identity $g -User $user -AccessRights $right



         }
           '4' {
              $identity=Read-Host "Please enter identity"
              $user=read-host "Please Enter User"
              $test=':\calendar'
              $g=$identity+$test
              
              function Show-Menu1
{
    param (
        [string]$Title1 = 'Daniel Ishayev 365 Menu'
    )
    Clear-Host
    Write-Host "================ Daniel Ishayev 365 Menu ================"
    
    Write-Host "1: Add Author Permissions."
    Write-Host "2: Add Contributor Permissions."
    Write-Host "3: Add Editor Permissions."
    Write-Host "4: Add None Permissions."
    Write-Host "5: Add NonEditingAuthor Permissions."
    Write-Host "6: Add Owner Permissions."
    Write-Host "7: Add PublishingAuthor Permissions."
    Write-Host "8: Add PublishingEditor Permissions."
    Write-Host "9: Add Reviewer Permissions."
    Write-Host "10: Add AvailabilityOnly Permissions."
    Write-Host "11: Add LimitedDetails Permissions."
}

do
 {
  
   Show-Menu1
     $selection1 = Read-Host "Please make a selection:"
     switch ($selection1)
          {
         '1' {
               $right='Author'
               $selection1='z'
         } '2' {
               $right="Contributor"
               $selection1='z'
         } '3' {
               $w="Editor"
               $selection1='z'
         }
           '4' {
               $right="None"
               $selection1='z'
         }
           '5' {
               $right="NonEditingAuthor"
               $selection1='z'
         }
           '6' {
               $right="Owner"
               $selection1='z'
         }
           '7' {
               $right="PublishingAuthor"
               $selection1='z'
         }
           '8' {
               $right="PublishingEditor"
               $selection1='z'

         }
           '9' {
               $right="Reviewer"
               $selection1='z'
         }
           '10' {
               $right="AvailabilityOnly"
               $selection1='z'
         }
           '11' {
               $right="LimitedDetails"
               $selection1='z'
         }

     }
     pause
 }

   
until ($selection1 -eq 'z')

               Add-MailboxFolderPermission -Identity $g -User $user -AccessRights $right
             
         }
           '5' {
              $identity=Read-Host "Please enter identity"
              $user=read-host "Please Enter User"
              $test=':\contacts'
              $g=$identity+$test


              Remove-MailboxFolderPermission -Identity $g -User $user

         }
           '6' {
              $identity=Read-Host "Please enter identity"
              $user=read-host "Please Enter User"
              $test=':\calendar'
              $g=$identity+$test
              Remove-MailboxFolderPermission -Identity $g -User $user

         }

     }
     pause
 }

 until ($selection -eq 'q')
