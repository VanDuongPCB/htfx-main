#!/bin/bash
# ==============================
# Update main Git repo and submodules
# ==============================

echo "Updating main repository..."
git pull origin master

echo
echo "Updating submodules..."
git submodule update --init --recursive
git submodule foreach git pull origin master

echo
echo "Update completed!"