#!/bin/bash

# Update package databases and upgrade system
sudo pacman -Syu

# Install required packages
sudo pacman -S base-devel fontconfig freetype2 libglvnd sndio cmake git gtk3 python sdl2 vulkan-intel libxkbcommon-x11

# Install Rust using rustup
curl --proto '=https' --tlsv1.2 -sSf "https://sh.rustup.rs" | sh

# Add Rust to the PATH (You might need to restart your shell session for this to take effect)
source $HOME/.cargo/env

# Install Neovide
cargo install --git https://github.com/neovide/neovide

# Display a message indicating completion
echo "All commands have been executed successfully."

