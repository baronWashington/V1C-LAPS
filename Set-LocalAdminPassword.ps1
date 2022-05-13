<#
The Password Settings are as follows:
 - Length (Characters): 15
 - Complexity: Multicase + Numbers + Specials
 #>

 
$uppercase = "ABCDEFGHKLMNOPRSTUVWXYZ".tochararray() 
$lowercase = "abcdefghiklmnoprstuvwxyz".tochararray() 
$number = "0123456789".tochararray() 
$special = "$%&/()=?}{@#*+!".tochararray() 

$password =($uppercase | Get-Random -count 1) -join ''
$password +=($lowercase | Get-Random -count 5) -join ''
$password +=($number | Get-Random -count 1) -join ''
$password +=($special | Get-Random -count 1) -join ''

$passwordarray=$password.tochararray() 
$scrambledpassword=($passwordarray | Get-Random -Count 8) -join ''
$scrambledpassword




<#
function New-Password {
    
$message = "Hello" #Define Variable
Write-Output $message #Returns Password
}

New-Password # Runs function
$message
#net user #>