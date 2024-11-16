# Checklist for linux systems

1. Change user password accessing the current system (log this in the teams chat and on password inject)
2. Change service passwords on the system (log in teams chat)
3. Take backup of current service and upload to the decided backup server (ubuntu machine & 2019)
3. Check for added users and remove them
    cat /etc/shadow or /etc/passwd
4. Check crontab for weird entries 
    crontab -e (use the user and root in case other scripts have been made)
5. Ensure listening ports are not outside of expected ranges
6. Check configuration of SSHD for malicous modification (take a backup of working config and store in directory /etc/.cache-logs)
7. Update services to newest version 
    apt update && apt upgrade -y 
    yum update && yum upgrade -y
8. Verify functionality of the logging service
    journalctl