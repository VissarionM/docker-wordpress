#!/bin/bash

# Function to open URL based on OS
open_url() {
    local url=$1

    # Detect the operating system
    if [[ "$OSTYPE" == "darwin"* ]]; then
        open $url
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        if [ -n "$DISPLAY" ]; then
            xdg-open $url
        else
            if command -v lynx &>/dev/null; then
                lynx $url
            else
                echo "CLI browser Lynx is not installed. Installing..."
                sudo apt update
                sudo apt install lynx
                lynx $url
            fi
        fi
    elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
        # Use PowerShell to open the URL on Windows
        powershell.exe Start-Process $url
    else
        echo "Unsupported operating system"
        exit 1
    fi
}

# URL to open
url="http://localhost"

# Call function to open URL
open_url $url