$SaveFile = "nsis-3.08-setup.exe"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/feedmepos/github-actions/main/binaries/$SaveFile" -OutFile $SaveFile
$CurrentPath = Get-Location
$SavePath = "$CurrentPath\$SaveFile"
Start-Process -Wait -FilePath $SavePath -ArgumentList "/S" -PassThru
$NsisPath = "${env:ProgramFiles(x86)}\NSIS\"
$env:Path += ";$NsisPath" # Add NSIS to the path