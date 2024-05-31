#!/bin/bash

# Function to open URL based on OS
open_url() {
    local url=$1

    # Detect the operating system
    if [[ "$OSTYPE" == "darwin"* ]]; then
        open $url
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        xdg-open $url
    elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
        start $url
    else
        echo "Unsupported operating system"
        exit 1
    fi
}

# URL to open
url="http://localhost"

# Call function to open URL
open_url $url