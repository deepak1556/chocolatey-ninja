$packageName = 'ninja'
$url = 'https://github.com/ninja-build/ninja/releases/download/v1.7.1/ninja-win.zip'

Install-ChocolateyZipPackage $packagename $url $(Split-Path -parent $MyInvocation.MyCommand.Definition)
