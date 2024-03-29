# Corrected Script

Write-Host "Operations Starting..."

# Finding Log
$logFiles = Get-ChildItem -Filter *.log
if ($logFiles.Count -eq 0) {
    Write-Host "No .log files found in the current directory."
    exit
}
$filePath = $logFiles[0].FullName
$fileName = $logFiles[0].Name

# Cleaning Log
Write-Host "Reading: $fileName"
Start-Sleep -Seconds 1
$originalContent = Get-Content $filePath
Write-Host "Removing ANSI codes..="
Start-Sleep -Seconds 1
$regex = '\u001b\[[0-9;]*[mK]'
$filteredContent = $originalContent | Foreach-Object { $_ -replace $regex, '' }
$filteredFilePath = "$filePath"
Write-Host "Writing: $fileName"
Start-Sleep -Seconds 1
$filteredContent | Set-Content $filteredFilePath

# Exit Script
Write-Host "...=Operations completed."
Write-Host
Start-Sleep -Seconds 1
