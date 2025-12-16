#!/bin/bash

# Usage: ./connect_eduroam.sh <liu-id>

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <liu-id>"
  exit 1
fi

LIU_ID="$1"
SSID="eduroam"
CON_NAME="eduroam"
IFNAME="wlan0"

# Delete existing eduroam connection if it exists
nmcli connection delete "$CON_NAME" 2>/dev/null

# Add new eduroam connection
nmcli connection add type wifi con-name "$CON_NAME" ifname "$IFNAME" ssid "$SSID"

# Modify connection with necessary credentials
nmcli connection modify "$CON_NAME" \
  wifi-sec.key-mgmt wpa-eap \
  802-1x.eap peap \
  802-1x.identity "${LIU_ID}@liu.se" \
  802-1x.anonymous-identity "anonymous@liu.se" \
  802-1x.phase2-auth mschapv2

# Bring up the connection
echo "Connecting to eduroam..."
if nmcli connection up "$CON_NAME" --ask; then
  echo "Successfully connected to eduroam!"
else
  echo "Failed to connect to eduroam. Check your credentials and try again."
  exit 1
fi
