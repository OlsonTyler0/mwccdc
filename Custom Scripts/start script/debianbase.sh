#!/bin/bash
# ==============================================================================
# Script Name : debiandns.sh
# Description : This script automates system hardening tasks for CCDC defense.
# Author      : Tyler Olson
# Organization: Missouri State University
# Date        : 12/19/24
# Version     : 1.0
# ==============================================================================
# Usage       : ./ccdc_hardening.sh
# Notes       :
#   - This script must be run with root or sudo privileges.
#   - Review all configurations to ensure they align with competition policies.
# ==============================================================================
# Changelog:
#   v1.0 - Initial version with essential hardening steps
# ==============================================================================

echo "=========================================================================="
echo "                   CCDC Configuration Script                              "
echo "=========================================================================="


# Ensure the script is run with sudo
if [ "$EUID" -ne 0 ]; then
    echo "This script must be run with sudo privileges. Exiting."
    exit 1
fi

# ==============================================================================
# Changing default password of current user and root 
# ==============================================================================

echo "changing the password of the current logged in user."
echo "team members can reference password guide provided on paper for this."

username=$(logname)
passwd "$username"

