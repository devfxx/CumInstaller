$link = "https://github.com/devfxx/CumInstaller/releases/latest/download/CumInstallerCli.exe"

$outfile = "$env:TEMP\CumInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
