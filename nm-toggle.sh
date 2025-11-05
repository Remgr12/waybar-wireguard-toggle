#!/bin/bash
set -eEo pipefail

# --- CONFIGURATION ---
CONNECTION_NAME="Laptop"
# ---------------------

# Check if the connection is active and toggle
if nmcli connection show --active | grep -q "${CONNECTION_NAME}"; then
  # Is active, so disconnect
  nmcli connection down "${CONNECTION_NAME}"
  notify-send "Wireguard disabled." -u low
else
  # Is not active, so connect
  nmcli connection up "${CONNECTION_NAME}"
  notify-send "Wireguard enabled." -u low
fi
