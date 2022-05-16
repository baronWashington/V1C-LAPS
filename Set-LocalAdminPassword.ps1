Function New-Password {

    $uppercase = "ABCDEFGHKLMNOPRSTUVWXYZ".tochararray() 
    $lowercase = "abcdefghiklmnoprstuvwxyz".tochararray() 
    $number = "0123456789".tochararray() 
    $special = "$%&/()=?}{@#*+!".tochararray()
    $complexity = @($uppercase, $lowercase, $number, $special)

    $password =($complexity | Get-Random -count  15) -join ''

    $passwordarray=$password.tochararray() 
    $scrambledpassword = ($passwordarray | Get-Random -Count 15) -join ''

    Write-Output $scrambledpassword
}

New-Password
$scrambledpassword