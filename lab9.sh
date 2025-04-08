#!/bin/bash

# Aim: To install required packages using rpm/deb/apt.

# 1. How do I check if my Linux is DEB or RPM?
# Since 'dpkg -l' produces a long list of packages, our system uses '.deb' packages.

# Check the package manager
if dpkg --version >/dev/null 2>&1; then
    echo "This system uses .deb packages."
else
    echo "This system uses .rpm packages."
fi

# 2. What is the difference between Linux RPM & DEB Packages?

# DEB vs RPM Explanation:
echo "
- DEB stands for Debian and RPM stands for Red Hat Package Manager.
- Both are used to manage software installations, updates, and uninstallation.
- DEB packages are used by Debian-based systems such as Ubuntu, while RPM packages are used by CentOS, Fedora, and Red Hat Enterprise Linux.
- DEB packages are installed using the 'dpkg' package manager, while RPM packages are installed using the 'rpm' package manager.
- The 'dpkg' package manager uses the '.deb' file format, which contains all the necessary files required for installation.
- Red Hat Package Manager uses the '.rpm' file format, which has all the necessary files required for installation.
- DEB packages use a system called Advanced Packaging Tool (APT) to manage dependencies.
- RPM packages use a system called Yellowdog Updater Modified (YUM) to manage dependencies.
- APT and RPM download and install the dependencies on their respective systems.
- Package repositories are servers that store packages and package metadata.
- DEB packages use Debian Package Repositories to store packages and metadata.
- RPM packages use RPM Package Manager Repositories to store packages and metadata.
- DEB uses a low-level package management tool known as 'dpkg', while RPM uses the 'rpm' tool—both are command-line tools.
"

# Check and install packages based on the system type
if dpkg --version >/dev/null 2>&1; then
    echo "Using APT to manage dependencies."
    # Example installation command (replace 'package_name' with the actual package)
    echo "sudo apt install package_name"
else
    echo "Using YUM to manage dependencies."
    # Example installation command (replace 'package_name' with the actual package)
    echo "sudo yum install package_name"
fi
