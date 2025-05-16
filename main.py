import os
import subprocess
import platform
import logging
import json

# Setup basic logging
logging.basicConfig(filename="optimizer.log", level=logging.INFO,
                    format="%(asctime)s - %(levelname)s - %(message)s")

# Load configuration settings from config.json
with open("config.json") as config_file:
    config = json.load(config_file)

def clean_windows():
    logging.info("Cleaning Windows system...")
    try:
        subprocess.run(["powershell", "-ExecutionPolicy", "Bypass", "-File", "scripts/clean_windows.ps1"], check=True)
        logging.info("Windows cleanup completed successfully.")
    except subprocess.CalledProcessError as e:
        logging.error(f"Error occurred during Windows cleanup: {e}")

def clean_linux():
    logging.info("Cleaning Linux system...")
    try:
        subprocess.run(["bash", "scripts/clean_linux.sh"], check=True)
        logging.info("Linux cleanup completed successfully.")
    except subprocess.CalledProcessError as e:
        logging.error(f"Error occurred during Linux cleanup: {e}")

def detect_os_and_clean():
    system_platform = platform.system().lower()
    if system_platform == "windows":
        clean_windows()
    elif system_platform == "linux":
        clean_linux()
    else:
        logging.error("Unsupported OS detected. This tool supports only Windows and Linux.")

if __name__ == "__main__":
    logging.info("Starting the junk optimizer tool...")
    detect_os_and_clean()
    logging.info("Junk optimizer process finished.")
