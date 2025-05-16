# Clean temp folders
Write-Host "Cleaning temporary files..."
Remove-Item "$env:TEMP\*" -Recurse -Force
Remove-Item "C:\Windows\Temp\*" -Recurse -Force

# Clean Recycle Bin
Write-Host "Cleaning Recycle Bin..."
Clear-RecycleBin -Confirm:$false

# Clean Windows Update cache
Write-Host "Cleaning Windows Update cache..."
Remove-Item "C:\Windows\SoftwareDistribution\Download\*" -Recurse -Force

# Clean Prefetch files
Write-Host "Cleaning Prefetch files..."
Remove-Item "C:\Windows\Prefetch\*" -Recurse -Force

# Optional: Disk Defragmentation (can be disabled if not needed)
Write-Host "Running disk defragmentation..."
defrag C: /O

Write-Host "Windows cleanup complete."
