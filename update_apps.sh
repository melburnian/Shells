#!/bin/bash

# Update installed applications using Homebrew

echo "Updating Homebrew..."
brew update

echo "Upgrading installed applications..."
brew upgrade

echo "Cleaning up old versions..."
brew cleanup

echo "Applications updated."
