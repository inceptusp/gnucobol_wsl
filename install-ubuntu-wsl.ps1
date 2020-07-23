$ProgressPreference = 'SilentlyContinue'
$ErrorActionPreference = 'Stop'
$URL = 'https://aka.ms/wslubuntu2004'
$FileName = 'Ubuntu-2004.appx'

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -n

Write-Host "Downloading: $FileName" -Foreground Yellow
try{
    Invoke-WebRequest -Uri $URL -OutFile $FileName -UseBasicParsing
    Write-Host "Installing: $FileName" -Foreground Yellow
    Add-AppxPackage $FileName
    if($?){
        Write-Host "$FileName installed successfully!" -Foreground Green
        Write-Host "You must restart your computer!" -Foreground Red -BackgroundColor Yellow
    }
}
catch{
    Write-Host "$FileName instalation failed!" -Foreground Red
}

if(Test-Path $FileName)
{
    del $FileName
}