#!/usr/bin/env bash

# Define colors for better user experience
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Source the task scripts
source ./user_and_group_management.sh
source ./file_permissions_and_acls.sh
source ./service_management.sh
source ./networking.sh
source ./storage_management.sh
source ./software_management.sh
source ./system_monitoring_and_performance_tuning.sh
source ./task_automation_and_scheduling.sh
source ./security.sh
source ./backup_and_restore.sh
source ./logging_and_auditing.sh
source ./system_configuration_and_management.sh
source ./network_file_systems.sh
source ./kernel_and_boot_management.sh
source ./virtualization.sh

# Function to display the menu
show_menu() {
    echo -e "${BLUE}RHCSA Automated Tasks Menu${NC}"
    echo "1. User and Group Management"
    echo "2. File Permissions and ACLs"
    echo "3. Service Management"
    echo "4. Networking"
    echo "5. Storage Management"
    echo "6. Software Management"
    echo "7. System Monitoring and Performance Tuning"
    echo "8. Task Automation and Scheduling"
    echo "9. Security"
    echo "10. Backup and Restore"
    echo "11. Logging and Auditing"
    echo "12. System Configuration and Management"
    echo "13. Network File Systems"
    echo "14. Kernel and Boot Management"
    echo "15. Virtualization"
    echo "16. Exit"
}

# Function to handle user input
read_choice() {
    local choice
    read -p "Enter your choice [1-16]: " choice
    echo $choice
}

# Main script loop
while true; do
    show_menu
    choice=$(read_choice)
    
    case $choice in
        1) user_and_group_management ;;
        2) file_permissions_and_acls ;;
        3) service_management ;;
        4) networking ;;
        5) storage_management ;;
        6) software_management ;;
        7) system_monitoring_and_performance_tuning ;;
        8) task_automation_and_scheduling ;;
        9) security ;;
        10) backup_and_restore ;;
        11) logging_and_auditing ;;
        12) system_configuration_and_management ;;
        13) network_file_systems ;;
        14) kernel_and_boot_management ;;
        15) virtualization ;;
        16) echo "Exiting..." ; break ;;
        *) echo -e "${RED}Invalid choice! Please choose a valid option.${NC}" ;;
    esac
done
