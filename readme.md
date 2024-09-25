# MKV to MP4 Conversion Automation

This project automates the process of converting MKV video files to MP4 format using a combination of AppleScript (for Folder Actions) and Node.js.

NOTE: This project is intended for personal use and will require modifications to work in other environments, particarly for file paths referenced in the code.

## Project Structure

- `convert.js`: Node.js script that handles the actual conversion process using FFmpeg.
- `mkv-to-mp4-folder-action.scpt`: AppleScript that triggers the conversion process when new files are added to the specified folder.
- `package.json`: Node.js project configuration.
- `readme.md`: This file.

## Setup

1. Ensure you have Node.js and FFmpeg installed on your system.

2. Clone this repository

3. Create a hard link for the AppleScript to the Folder Actions Scripts directory:

   ```bash
   ln ~/path/to/repo/mkv-to-mp4/mkv-to-mp4-folder-action.scpt ~/Library/Scripts/Folder\ Action\ Scripts/mkv-to-mp4-folder-action.scpt
   ```

4. Set up the Folder Action:

   - Right-click on your Movies folder (or wherever you want to watch for new MKV files)
   - Go to Services
   - Select "Folder Actions Setup"
   - Choose the `mkv-to-mp4-folder-action.scpt` script

## How It Works

1. When an MKV file is added to the Movies folder, the Folder Action script is triggered.
2. The AppleScript calls the Node.js script (`convert.js`).
3. The Node.js script uses FFmpeg to convert the MKV file to MP4 format.
4. The original MKV file and the new MP4 file are moved to a new subdirectory named after part of the original file name.
5. Notifications are shown upon successful conversion or if an error occurs.

## Maintenance

- Any changes made to the AppleScript file in either the git repository or the Folder Action Scripts directory will be reflected in both locations due to the hard link.
- Most paths in both scripts are hardcoded and may need to be updated if the directory structure changes.

## Troubleshooting

- If the Folder Action stops working, check the log files in your local repo clone's `logs/` directory for error messages.
- Ensure that the paths in both the AppleScript and Node.js script are correct and pointing to the right locations.
