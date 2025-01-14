$link = "https://github.com/xlarp/PwnInstaller/releases/latest/download/PwnInstallerCli.exe"

$outfile = "$env:TEMP\PwnInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
