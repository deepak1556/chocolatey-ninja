try {
  $sysDrive = $env:SystemDrive
  $ninjaPath =  "$sysDrive/tools/ninja"

  Install-ChocolateyZipPackage 'ninja' 'https://github.com/martine/ninja/releases/download/v1.5.1/ninja-win.zip' $ninjaPath
  Install-ChocolateyPath $ninjaPath

  write-host 'ninja has been installed. Call ninja -h from the command line to see the list of options. You may need to close and repoen the command shell.'
  Write-ChocolateySuccess 'ninja'
} catch {
  Write-ChocolateyFailure 'ninja' $($._Exception.Message)
  throw
}
