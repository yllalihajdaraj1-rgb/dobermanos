#!/usr/bin/env bash
# -------------------------------------------------
# Install packages listed in "additional_packages"
# -------------------------------------------------

# Exit immediately if a command fails
set -euo pipefail

# Path to the file that holds the package list
PKG_FILE="additional_packages"

# Make sure the file exists and is readable
if [[ ! -r "$PKG_FILE" ]]; then
    echo "Error: Cannot read $PKG_FILE"
    exit 1
fi

# Pacman must be run as root (or via sudo)
if [[ $EUID -ne 0 ]]; then
    echo "Running as normal user – invoking sudo for Pacman."
    SUDO_CMD="sudo"
else
    SUDO_CMD=""
fi

# Read the file line‑by‑line
while IFS= read -r pkg || [[ -n "$pkg" ]]; do
    # Skip empty lines and comments
    [[ -z "$pkg" ]] && continue
    [[ "$pkg" =~ ^# ]] && continue

    echo "Installing $pkg ..."
    $SUDO_CMD pacman -S --needed --noconfirm "$pkg"
done < "$PKG_FILE"

echo "All packages processed."