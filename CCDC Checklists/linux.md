# Checklist for linux systems

1. Change user password accessing the current system (log this in the teams chat)
2. Change service passwords on the system
3. Take backup of current service and upload to the decided backup server (ubuntu machine)
3. Check for added users and remove them
    cat /etc/shadow or /etc/passwd
4. Check crontab for weird entries 
    crontab -e (use the user and root in case other scripts have been made)
5. Ensure listening ports are not outside of expected ranges
6. Check configuration of SSHD for malicous modification (take a backup of working config)
7. 