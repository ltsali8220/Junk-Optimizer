# Junk Optimizer Tool

A cross-platform junk cleaning and optimization tool built with Python, PowerShell, and Bash.

## Features
- Cleans temporary folders, Recycle Bin (Windows), and package manager cache (Linux).
- Supports disk defragmentation (optional) and journal log cleanup.
- Works on both Windows and Linux operating systems.

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/ltsali8220/Junk-Optimizer.git
   cd Junk-Optimizer
   ```
2. Ensure you have Python installed (Python 3.x recommended).

3. Run the Python script:
   ```bash
   python main.py
   ```

## Configuration

Edit the `config.json` file to customize the log file name and supported operating systems.

## Requirements

- **Windows:** PowerShell
- **Linux:** Bash, and a supported package manager (`apt-get`, `dnf`, or `pacman` depending on your distribution)

## License

This tool is open-source and distributed under the MIT License.

---

## Explanation

- **Python Script (`main.py`):** Detects the operating system and calls the appropriate cleaning script based on the OS (Windows or Linux).
- **Windows PowerShell Script (`clean_windows.ps1`):** Performs system cleanup tasks on Windows, including clearing temp folders, Recycle Bin, and prefetch files.
- **Linux Bash Script (`clean_linux.sh`):** Performs system cleanup tasks on Linux, including clearing temp directories, package manager caches, and journal logs.
- **Configuration File (`config.json`):** Configure the log file name and supported operating systems.
- **README (`README.md`):** Provides instructions for setting up and using the tool.

---
