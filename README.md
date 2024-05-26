# Maintenance Scripts for macOS

## Overview

Welcome to the repository for a collection of shell scripts designed for ad-hoc maintenance tasks on macOS. This repository aims to provide a set of tools to help streamline and automate various maintenance activities on your Mac.

## Table of Contents

- [Getting Started](#getting-started)
- [Scripts](#scripts)
- [Usage](#usage)
- [Contributing](#contributing)
- [Licence](#licence)

## Getting Started

To get started with these maintenance scripts, you'll need to clone this repository to your local machine and ensure you have the necessary permissions to execute the scripts. 

### Prerequisites

- macOS
- Bash or Zsh shell
- Administrator privileges (for certain scripts)

### Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/macos-maintenance-scripts.git
    ```
2. Navigate to the cloned directory:
    ```bash
    cd macos-maintenance-scripts
    ```
3. Make the scripts executable:
    ```bash
    chmod +x *.sh
    ```

## Scripts

This repository includes the following scripts:

- `cleanupapps.sh`: Clears leftover files from recently deleted applications.
- `clean_cache.sh`: Clears system and application caches.
- `backup_files.sh`: Creates backups of specified directories.
- `update_apps.sh`: Updates installed applications using Homebrew.
- `disk_usage.sh`: Displays disk usage statistics.
- `system_info.sh`: Outputs detailed system information.

Each script is designed to perform a specific maintenance task, and you can customise them as needed.

## Usage

To use any of the scripts, simply run them from the terminal.

## Contributing

Contributions are welcome! If you have a script you’d like to add to this collection, or suggest an improvement to an existing script, please fork the repository and submit a pull request. 

### Steps to Contribute

	1.	Fork the repository.
	2.	Create a new branch:

 ```bash
git checkout -b feature/your-feature-name
```
3. Commit your changes:
```bash
git commit -m "Add your feature"
```
4. Push to branch:
```bash
git push origin feature/your-feature-name
```
5. Open a pull request

## Licence
This project is licensed under the Unlicense. See the [LICENSE](https://github.com/melburnian/Shells/blob/main/LICENSE) file for details.
