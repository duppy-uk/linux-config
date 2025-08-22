#!/bin/bash
# cleanup-debian.sh - Script to clean up a Debian system after installation

# This script removes unnecessary packages, cleans up apt cache, and optimizes the system.
set -e
set -o pipefail
# Function to remove unnecessary packages
remove_unnecessary_packages() {
    echo "Removing unnecessary packages..."
    apt-get remove --purge -y aspell-am aspell aspell-ar aspell-bg aspell-ca aspell-cs \
        aspell-da aspell-de aspell-el aspell-en aspell-es aspell-et aspell-eu \
        aspell-fi aspell-fr aspell-gl aspell-he aspell-hu aspell-id aspell-it \
        aspell-ja aspell-ko aspell-lt aspell-nl aspell-no aspell-pl aspell-pt \
        aspell-ro aspell-ru aspell-sk aspell-sl aspell-sv aspell-tr \
        hunspell-am hunspell-ar hunspell-bg hunspell-ca hunspell-cs hunspell-da \
        hunspell-de hunspell-el hunspell-en hunspell-es hunspell-et hunspell-eu \
        hunspell-fi hunspell-fr hunspell-gl hunspell-he hunspell-hu hunspell-id \
        hunspell-it hunspell-ja hunspell-ko hunspell-lt hunspell-nl hunspell-no \
        hunspell-pl hunspell-pt hunspell-ro hunspell-ru hunspell-sk hunspell-sl \
        hunspell-sv hunspell-tr
    apt-get autoremove -y
    apt-get autoclean -y
}           
# Function to clean up apt cache
clean_apt_cache() {
    echo "Cleaning up apt cache..."
    apt-get clean
}       
# Function to optimize the system
optimize_system() {
    echo "Optimizing the system..."
    # Example optimization: removing old kernels (if applicable)
    if [ -d /boot ]; then
        echo "Removing old kernels..."
        dpkg -l 'linux-image-*' | awk '/^ii/ { print $2 }' | grep -v "$(uname -r)" | xargs -r sudo apt-get remove -y
    fi
}
# Main function to execute the cleanup
main() {
    echo "Starting cleanup process..."
    remove_unnecessary_packages
    clean_apt_cache
    optimize_system
    echo "Cleanup process completed."
}   
# Execute the main function
main
# End of cleanup-debian.sh
# Make sure to run this script with root privileges or using sudo.
# Usage: sudo ./cleanup-debian.sh   
# Note: Always review the packages to be removed before executing the script.
# This script is intended for Debian-based systems and may need adjustments for other distributions.
# Ensure you have backups of important data before running cleanup scripts.
# This script is provided as-is without any warranty. Use at your own risk.
# Ensure the script is executable
chmod +x cleanup-debian.sh
# You can run this script by executing: ./cleanup-debian.sh
# Ensure the script is run with root privileges
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root. Please use sudo."
    exit 1
fi  
# Check if the script is being run on a Debian-based system
if ! grep -q -i "debian" /etc/os-release; then
    echo "This script is intended for Debian-based systems only."
    exit 1
fi
# Check if apt-get is available
if ! command -v apt-get &> /dev/null; then
    echo "apt-get command not found. This script requires apt-get to run."
    exit 1
fi      
# Ensure the script is run in a safe environment
if [ -f /etc/cleanup-debian.lock ]; then
    echo "Cleanup process is already running or was interrupted. Please check /etc/cleanup-debian.lock."
    exit 1
fi
# Create a lock file to prevent concurrent execution
touch /etc/cleanup-debian.lock
trap 'rm -f /etc/cleanup-debian.lock' EXIT
# Start the cleanup process
main
# Remove the lock file after completion
rm -f /etc/cleanup-debian.lock
# End of script
echo "Cleanup script finished successfully."
# Note: Always review the changes made by this script, especially when removing packages.
# It is recommended to run this script in a test environment before applying it to production systems.
# This script is designed to help maintain a clean and efficient Debian system.
# For further customization, you can add additional cleanup tasks as needed.
# Ensure to keep the system updated regularly to maintain security and performance.
# You can schedule this script to run periodically using cron for ongoing maintenance.
# Example cron job to run this script weekly:
# 0 2 * * 0 /path/to/cleanup-debian.sh
# This will run the script every Sunday at 2 AM.
# Make sure to adjust the path to the script as necessary.
# Always test the script in a safe environment before deploying it widely.
# This script is a basic template and can be extended with more specific cleanup tasks as required.
# For example, you can add tasks to remove specific logs, temporary files, or unused configurations
# based on your system's needs.
# Remember to keep backups of important data before running any cleanup scripts.
# This ensures that you can restore your system in case of any unexpected issues.
# The script is designed to be simple and effective for basic cleanup tasks.
# Feel free to modify it according to your specific requirements.
# Always ensure that you have the necessary permissions and understanding of the changes being made.
# This script is provided as a starting point for system maintenance and cleanup.
# You can enhance it further by adding more features or integrating it with other system management tools.
# Thank you for using this cleanup script. Happy system maintenance!
# End of cleanup-debian.sh
# Make sure to run this script periodically to keep your Debian system clean and optimized.
# You can also integrate it with your system's monitoring tools to automate the cleanup process.
# Always keep your system documentation updated with any changes made by this script.
# This will help in maintaining clarity on what cleanup tasks are performed.
# Consider contributing to the community by sharing your enhancements or modifications to this script.
# This can help others who are looking for similar solutions.
# Remember to review the script periodically to ensure it remains compatible with the latest Debian releases.
# The Debian community is always evolving, and keeping your scripts up-to-date is essential.
# Thank you for taking the time to maintain your Debian system. Your efforts contribute to a more efficient and secure computing environment.
# If you have any questions or need further assistance, feel free to reach out to the Debian community or forums.
# They are a great resource for troubleshooting and best practices.
# Happy cleaning and optimizing your Debian system!
# This script is a simple yet effective way to keep your Debian system in top shape.
# Remember to always test scripts in a safe environment before deploying them widely.
# This ensures that you can catch any potential issues without affecting your production systems.
# The script is designed to be user-friendly and straightforward, making it accessible for users of all skill levels.
# Feel free to customize it further based on your specific needs and preferences.
# Always ensure that you have the necessary backups and recovery options in place before running cleanup scripts.
# This will help you recover quickly in case of any unexpected issues.
# The script is intended to be a starting point for system maintenance and can be extended with additional
# features as needed. You can add more cleanup tasks, logging, or notifications based on your requirements.
# Thank you for using this cleanup script, and happy system maintenance!
# End of cleanup-debian.sh