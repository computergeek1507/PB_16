import os
import glob
import pcbnew # KiCad's Python module
import sys
import subprocess

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

def drc_pcb_files(directory, extension):
    # Find all .kicad_pcb files in the specified directory
    #files = glob.glob( './*.kicad_pcb', recursive=True)
    files = find_files_os_walk(directory, extension)
    
    if not files:
        print(f"No .kicad_pcb files found in {directory}")
        return

    print(f"Found {len(files)} files to Run DRC...")
    for file_path in files:
        try:
            output_file = os.path.join(os.path.dirname(file_path), 'drc_report.json')

            # Run the DRC and check for violations using --exit-code-violations
            subprocess.run(
                ['kicad-cli', 'pcb', 'drc', '--format', 'json', '--output', output_file, '--exit-code-violations', file_path],
                check=True, # check=True raises an exception if the command fails (i.e., finds violations with --exit-code-violations)
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE
            )
            print(f"DRC passed. Report generated at {output_file}")
        except subprocess.CalledProcessError as e:
            print(f"DRC failed with violations. Report generated at {output_file}")
            # You can read the report file here to parse the errors
            with open(output_file, 'r') as f:
                # Process the JSON or TXT report
                print(f.read())
        except FileNotFoundError:
            print("kicad-cli command not found. Ensure KiCad is installed and in your system's PATH.")


if __name__ == "__main__":
    drc_pcb_files(directory_path,extension_to_find)