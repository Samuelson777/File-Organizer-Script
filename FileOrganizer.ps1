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
    if ($_.PSIsContainer -eq $false) {  # Check if it's not a directory
        $extension = $_.Extension.ToLower()
        switch ($extension) {
            ".jpg" { Move-Item $_.FullName -Destination "Images\" }
            ".jpeg" { Move-Item $_.FullName -Destination "Images\" }
            ".png" { Move-Item $_.FullName -Destination "Images\" }
            ".gif" { Move-Item $_.FullName -Destination "Images\" }
            ".pdf" { Move-Item $_.FullName -Destination "Documents\" }
            ".doc" { Move-Item $_.FullName -Destination "Documents\" }
            ".docx" { Move-Item $_.FullName -Destination "Documents\" }
            ".txt" { Move-Item $_.FullName -Destination "Documents\" }
            ".mp4" { Move-Item $_.FullName -Destination "Videos\" }
            ".mkv" { Move-Item $_.FullName -Destination "Videos\" }
            ".avi" { Move-Item $_.FullName -Destination "Videos\" }
            ".mp3" { Move-Item $_.FullName -Destination "Music\" }
            ".wav" { Move-Item $_.FullName -Destination "Music\" }
            default { Move-Item $_.FullName -Destination "Others\" }
        }
    }
}

Write-Host "Files organized successfully!"