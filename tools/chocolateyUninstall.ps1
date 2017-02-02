$packageName = 'jmeter-server-agent'

try {
  # Remove custom shim
  rm $env:ChocolateyInstall\bin\startAgent.bat
  Write-ChocolateySuccess $packageName

} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw 
}
