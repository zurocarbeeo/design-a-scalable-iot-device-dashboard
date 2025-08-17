#!/bin/bash

# IoT Device Dashboard Template

# Configuration Section
DEVICE_NAME="My IoT Device"
API_URL="https://example.com/api"
 Dash_USERNAME="admin"
Dash_PASSWORD="password"

# Colors
GREEN="\e[32m"
RED="\e[31m"
END_COLOR="\e[0m"

# Functions
function get_device_data() {
  curl -X GET \
    https://example.com/api/devices/${DEVICE_NAME}/data \
    -H 'Content-Type: application/json' \
    -H "Authorization: Bearer ${Dash_PASSWORD}" \
    -d ''
}

function display_dashboard() {
  clear
  echo -e "${GREEN}IoT Device Dashboard${END_COLOR}"
  echo "Device Name: ${DEVICE_NAME}"
  echo "API URL: ${API_URL}"
  echo "Last Data Update: $(date)"
  echo ""
  get_device_data
}

# Main Loop
while true
do
  display_dashboard
  sleep 5
done