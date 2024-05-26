#!/bin/bash

# Clear system and application caches

echo "Clearing system and application caches..."

# Clear user cache
rm -rf ~/Library/Caches/*

# Clear system cache
sudo rm -rf /Library/Caches/*

# Clear application caches
sudo rm -rf /System/Library/Caches/*

echo "Caches cleared."
