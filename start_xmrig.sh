#!/bin/bash

# Update package lists
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Install ubuntu-drivers-common
sudo apt install ubuntu-drivers-common -y

# List available drivers
sudo ubuntu-drivers devices

# Install NVIDIA driver version 535
sudo apt install nvidia-driver-535 -y

# Reboot to apply driver changes
sudo reboot now

# Install essential tools for CUDA installation
sudo apt install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev gcc wget

# Clone Xmrig repository
git clone https://github.com/xmrig/xmrig.git

# Navigate to build directory and run CMake
cd xmrig
mkdir build
cd build
cmake ..

# Compile Xmrig
make -j4

# Reboot to apply changes
sudo reboot now

# Add user to the video group for permissions to run nvidia-settings
sudo usermod -aG video $USER

# Log out and log back in to apply group membership changes
echo "Please log out and log back in to apply group membership changes."
