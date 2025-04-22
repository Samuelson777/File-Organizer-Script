# Prompt the user for the directory to organize
$directory = Read-Host "Enter the directory to organize"

# Check if the directory exists
if (-Not (Test-Path $directory)) {
    Write-Host "Directory does not exist."
    exit
}

# Change to the specified directory
Set-Location $directory

# Create subdirectories for different file types
$subdirs = @("Images", "Documents", "Videos", "Music", "Others")
foreach ($subdir in $subdirs) {
    if (-Not (Test-Path $subdir)) {
        New-Item -ItemType Directory -Name $subdir
    }
}

# Loop through files in the directory
Get-ChildItem -File | ForEach-Object {
    # Ensure that the item is a file and has a valid FullName
    if ($_.PSIsContainer -eq $false -and $_.FullName -and $_.Length -gt 0) {
        $extension = $_.Extension.ToLower()
        $destinationPath = ""

        switch ($extension) {
            ".jpg" { $destinationPath = "Images\" }
            ".jpeg" { $destinationPath = "Images\" }
            ".png" { $destinationPath = "Images\" }
            ".gif" { $destinationPath = "Images\" }
            ".pdf" { $destinationPath = "Documents\" }
            ".doc" { $destinationPath = "Documents\" }
            ".docx" { $destinationPath = "Documents\" }
            ".txt" { $destinationPath = "Documents\" }
            ".mp4" { $destinationPath = "Videos\" }
            ".mkv" { $destinationPath = "Videos\" }
            ".avi" { $destinationPath = "Videos\" }
            ".mp3" { $destinationPath = "Music\" }
            ".wav" { $destinationPath = "Music\" }
            default { $destinationPath = "Others\" }
        }

        # Move the file to the appropriate directory
        Move-Item -Path $_.FullName -Destination $destinationPath -ErrorAction Stop
        Write-Host "Moved file: $($_.Name) to $destinationPath"
    } else {
        Write-Host "Skipping non-file item or empty file: $($_.Name)"
    }
}

Write-Host "Files organized successfully!"