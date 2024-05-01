# XMRIG-quick-setup
# Install Chocolatey (if not already installed)
if (!(Test-Path "C:\ProgramData\chocolatey")) {
    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

# Install Git, CMake, and other dependencies
choco install git cmake wget -y

# Install NVIDIA driver version 535 (assuming driver is already downloaded)
# Replace "<driver_installer_path>" with the actual path to the driver installer
# For example, "C:\Downloads\nvidia-driver-535.exe"
# Start-Process -Wait -FilePath "<driver_installer_path>"

# Reboot to apply driver changes
# Restart-Computer -Force

# Install essential tools for CUDA installation
# Not necessary on Windows for this script

# Clone Xmrig repository
git clone https://github.com/xmrig/xmrig.git

# Navigate to build directory and run CMake
cd xmrig
mkdir build
cd build
cmake ..

# Compile Xmrig
cmake --build . --config Release

# Add user to the video group for permissions to run nvidia-settings
# Not necessary on Windows for this script

# Log out and log back in to apply group membership changes
Write-Host "Please log out and log back in to apply group membership changes."
#!/bin/bash

************************************************************************************
THESE ARE THE COMANDS FOR THE LINUX SYSTEMS
************************************************************************************

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


