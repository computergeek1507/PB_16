import os
import glob
import pcbnew # KiCad's Python module
import sys

from pathlib import Path

# Define the directory containing your KiCad PCB files
# Use forward slashes for path consistency across operating systems
directory_path = "D:\kicad_data\PB_16" # Current directory
extension_to_find = ".kicad_pcb"

# Optional: Add the directory to the system path if pcbnew import fails
# sys.path.insert(1, "path/to/kicad_python_libs")

def find_files_os_walk(directory, extension):
    """
    Find files with a specific extension in a directory and subdirectories 
    using os.walk.
    """
    found_files = []
    # os.walk yields root directory path, subdirectory names, and file names
    for root, dirs, files in os.walk(directory):
        for file in files:
            # Check if the file ends with the desired extension
            if file.endswith(extension.lstrip('.')):
                # Join the root path and file name to get the full path
                full_path = os.path.join(root, file)
                found_files.append(full_path)
    return found_files

def find_files_glob(directory, extension):
    """
    Find files with a specific extension in a directory and subdirectories 
    using glob.
    """
    # Construct the search pattern: directory/**/*.extension
    # os.path.join helps with cross-platform compatibility
    search_pattern = os.path.join(directory, "**", f"*.{extension.lstrip('.')}")
    # Use glob.glob with recursive=True
    files_list = glob.glob(search_pattern, recursive=True)
    return files_list

def upgrade_pcb_files(directory, extension):
    # Find all .kicad_pcb files in the specified directory
    #files = glob.glob( './*.kicad_pcb', recursive=True)
    files = find_files_os_walk(directory, extension)
    
    if not files:
        print(f"No .kicad_pcb files found in {directory}")
        return

    print(f"Found {len(files)} files to upgrade...")

    for file_path in files:
        print(f"Upgrading: {file_path}")
        try:
            # Load the board using pcbnew's LoadBoard function
            board = pcbnew.LoadBoard(file_path)
            
            # The act of loading the board into the current KiCad version's memory 
            # and then saving it will upgrade the file format.
            # Save the board back to its original location (overwrites the old file)
            board.Save(file_path) 
            print(f"Successfully upgraded: {file_path}")

        except Exception as e:
            print(f"Error upgrading {file_path}: {e}")

if __name__ == "__main__":
    upgrade_pcb_files(directory_path,extension_to_find)