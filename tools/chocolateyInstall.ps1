$packageName = 'jmeter-server-agent'
$url = 'http://jmeter-plugins.org/downloads/file/ServerAgent-2.2.1.zip' # download url

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

try {
  # Custom batch shim
  cp $env:ChocolateyInstall\lib\$packageName\tools\jmeter.bat $env:ChocolateyInstall\bin

} catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw 
}


