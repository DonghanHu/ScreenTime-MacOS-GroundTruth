#!/bin/bash

# Define the directory paths
HOME_DIR="$HOME"
TARGET_FOLDER="$HOME_DIR/RouterSense"
PARTICIPANT_FILE="$TARGET_FOLDER/participantid.txt"
WIREGUARD_PROFILE="$TARGET_FOLDER/wg-profile.conf"
PROFILE_DOWNLOAD_URL="http://164.90.132.244:8000/get-config?username="
FOREGROUND_DATA_POST_URL="http://167.172.17.221:3000/upload_data"
DOWNLOADS_FOLDER="$HOME/Downloads"
WIREGUARD_DOWNLOAD_FILE="$DOWNLOADS_FOLDER/wg-profile.conf"

# Step 1: Ensure the RouterSense folder exists
if [[ ! -d "$TARGET_FOLDER" ]]; then
    echo "Creating RouterSense folder..."
    mkdir -p "$TARGET_FOLDER"
fi

# Step 2: Check for participantid.txt, exit if missing
if [[ ! -f "$PARTICIPANT_FILE" ]]; then
    osascript -e 'display dialog "Error: participantid.txt not found! Please run the setup script again." buttons {"OK"} default button "OK"'
    exit 1
fi

PARTICIPANT_ID=$(cat "$PARTICIPANT_FILE" | tr -d '[:space:]')

# Step 3: Check and install Xcode Command Line Tools
if ! xcode-select -p &>/dev/null; then
    echo "Xcode Command Line Tools not found. Installing..."
    xcode-select --install
    
    osascript -e 'display dialog "Xcode Command Line Tools installation started. Please follow the installation prompt and then re-run this script." buttons {"OK"} default button "OK"'
    exit 1
else
    osascript -e 'display dialog "Xcode Command Line Tools are already installed." buttons {"OK"} default button "OK"'
fi

# Notify user after successful installation
osascript -e 'display dialog "Xcode Command Line Tools installation completed!" buttons {"OK"} default button "OK"'

# Step 4: Check and install Homebrew
if ! command -v brew &>/dev/null; then
    osascript -e 'display dialog "Homebrew not found. Installing now..." buttons {"OK"} default button "OK"'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    
    eval "$(/opt/homebrew/bin/brew shellenv)"
    
    if ! command -v brew &>/dev/null; then
        osascript -e 'display dialog "Error: Homebrew installation failed. Please check your internet connection and try again." buttons {"OK"} default button "OK"'
        exit 1
    fi
    
    osascript -e 'display dialog "Homebrew successfully installed!" buttons {"OK"} default button "OK"'
else
    osascript -e 'display dialog "Homebrew is already installed." buttons {"OK"} default button "OK"'
fi

# Notify user after successful installation
osascript -e 'display dialog "Homebrew installation completed!" buttons {"OK"} default button "OK"'

# Step 5: Check and install wireguard-tools
if ! brew list --formula | grep -q "wireguard-tools"; then
    osascript -e 'display dialog "Installing WireGuard tools..." buttons {"OK"} default button "OK"'
    brew install wireguard-tools
    
    if ! brew list --formula | grep -q "wireguard-tools"; then
        osascript -e 'display dialog "Error: WireGuard tools installation failed. Please try again." buttons {"OK"} default button "OK"'
        exit 1
    fi
    
    osascript -e 'display dialog "WireGuard tools successfully installed!" buttons {"OK"} default button "OK"'
else
    osascript -e 'display dialog "WireGuard tools are already installed." buttons {"OK"} default button "OK"'
fi

# Notify user after successful installation
osascript -e 'display dialog "WireGuard tools installation completed!" buttons {"OK"} default button "OK"'

# Step 6: Download WireGuard profile and move it to the target folder
if [[ ! -f "$WIREGUARD_PROFILE" ]]; then
    osascript -e "display dialog \"Downloading WireGuard profile for Participant ID: $PARTICIPANT_ID...\" buttons {\"OK\"} default button \"OK\""
    
    # Use new API format
    API_URL="${PROFILE_DOWNLOAD_URL}${PARTICIPANT_ID}&device_type=laptop"
    
    curl -L -o "$WIREGUARD_DOWNLOAD_FILE" "$API_URL"

    if [[ ! -f "$WIREGUARD_DOWNLOAD_FILE" ]]; then
        osascript -e 'display dialog "Error: Failed to download WireGuard profile. Please check your network connection and try again." buttons {"OK"} default button "OK"'
        exit 1
    fi

    mv "$WIREGUARD_DOWNLOAD_FILE" "$WIREGUARD_PROFILE"

    osascript -e 'display dialog "WireGuard profile successfully downloaded and moved!" buttons {"OK"} default button "OK"'
else
    osascript -e 'display dialog "WireGuard profile already exists in the target folder." buttons {"OK"} default button "OK"'
fi

# Step 7: Start WireGuard VPN using the downloaded configuration
# osascript -e 'display notification "Starting WireGuard VPN..." with title "Setup Progress"'
# wg-quick up "$WIREGUARD_PROFILE"
# if [[ $? -ne 0 ]]; then
#     osascript -e 'display dialog "Error: Failed to start WireGuard VPN. Please check your profile and try again." buttons {"OK"} default button "OK"'
#     exit 1
# fi

# osascript -e 'display dialog "WireGuard VPN started successfully!" buttons {"OK"} default button "OK"'



# Step 8: Run AppleScript every 3 seconds
osascript -e 'display notification "Monitoring foreground apps..." with title "Setup Running"'

while true; do
    osascript "$HOME/RouterSense/foreground_tracker.scpt"
    sleep 3
done 