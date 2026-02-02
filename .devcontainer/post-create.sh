#!/bin/bash
set -e

echo "Installing system dependencies..."
sudo apt-get update
sudo apt-get install -y \
    build-essential \
    cmake \
    ninja-build \
    libgtest-dev \
    clang-format \
    curl

echo "Installing Python dependencies..."
pip3 install --user -r requirements.txt

echo "Installing Go tools..."
go install golang.org/x/tools/gopls@latest

echo "Setup complete!"
echo "Run 'make check' to verify the environment."
