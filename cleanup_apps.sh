#!/bin/bash

# Cleanup script for macOS to remove leftover files from deleted applications

echo "Starting cleanup of leftover application files..."

# Function to remove directories and files if they exist
remove_if_exists() {
  if [ -e "$1" ]; then
    rm -rf "$1"
    echo "Removed $1"
  fi
}

# Directories to search for leftover files
dirs_to_check=(
  "~/Library/Application Support"
  "~/Library/Caches"
  "~/Library/Preferences"
  "~/Library/Saved Application State"
  "~/Library/Logs"
  "/Library/Application Support"
  "/Library/Caches"
  "/Library/Preferences"
  "/Library/Saved Application State"
  "/Library/Logs"
)

# List of application names to clean up
apps_to_cleanup=(
  "Firefox.app"
  "Microsoft Edge.app"
  "Your Other App 1.app"
  "Your Other App 2.app"
# Continue populating this list with recently removed apps
)

# Expand the tilde (~) to the home directory for the current user
expanded_dirs_to_check=()
for dir in "${dirs_to_check[@]}"; do
  expanded_dirs_to_check+=("$(eval echo "$dir")")
done

# Loop through each application and remove related files
for app in "${apps_to_cleanup[@]}"; do
  for dir in "${expanded_dirs_to_check[@]}"; do
    remove_if_exists "$dir/$app"
    remove_if_exists "$dir/$app*"
  done
done

echo "Cleanup completed."

# Optionally, prompt the user to restart their system for changes to take effect
read -p "Would you like to restart your system to apply changes? (y/n): " restart_choice
if [[ "$restart_choice" == "y" || "$restart_choice" == "Y" ]]; then
  sudo shutdown -r now
fi

exit 0
