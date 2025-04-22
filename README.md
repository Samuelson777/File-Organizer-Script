# File Organizer Script

## Overview

The **File Organizer Script** is a PowerShell script designed to help users organize files in a specified directory by moving them into subdirectories based on their file types. This script simplifies file management and helps keep your workspace tidy.

## Features

- Organizes files into subdirectories:
  - Images (e.g., .jpg, .jpeg, .png, .gif)
  - Documents (e.g., .pdf, .doc, .docx, .txt)
  - Videos (e.g., .mp4, .mkv, .avi)
  - Music (e.g., .mp3, .wav)
  - Others (any other file types)

## Prerequisites

- Windows operating system
- PowerShell (comes pre-installed with Windows)
- Execution policy set to allow script execution (you can set it using `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser `)

## Example

Given a directory with the following files:
- example.jpg
- example.pdf
- example.mp4
- example.txt
- example.unknown

After running the script, the directory structure will be:
- Images/
  - example.jpg
- Documents/
  - example.pdf
  - example.txt
- Videos/
  - example.mp4
- Others/
  - example.unknown

## Example Screenshots of File Organizer

![File Organizer Script](https://github.com/user-attachments/assets/9a957663-efd0-4fa4-8558-ef61142455aa)
![File Organizer Script](https://github.com/user-attachments/assets/9886a6fa-4e80-449b-a533-bbec43a63eb2)

## Conclusion

The File Organizer Script project provides a practical solution for managing and organizing files within a specified directory on Windows systems. By automating the process of sorting files into designated subdirectories based on their types, this script enhances productivity and helps maintain a clutter-free workspace.

Through the use of PowerShell, users can easily execute the script with minimal setup, making it accessible even for those with limited programming experience. The script's flexibility allows for easy customization, enabling users to add more file types or modify the organization structure as needed.

Overall, this project not only simplifies file management but also serves as a valuable learning experience in scripting and automation. Whether for personal use or in a professional environment, the File Organizer Script is a useful tool that can save time and effort in managing digital files. As you continue to develop your skills, consider expanding this project with additional features, such as a user interface or integration with cloud storage solutions, to further enhance its functionality.

## Acknowledgments

Inspired by the need for better file organization in personal and professional environments.
