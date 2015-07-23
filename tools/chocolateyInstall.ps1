$packageName = 'ninja'
$url = 'https://github.com/martine/ninja/releases/download/v1.6.0/ninja-win.zip'

Install-ChocolateyZipPackage $packagename $url $(Split-Path -parent $MyInvocation.MyCommand.Definition)
