#!/bin/bash
echo "Updating system..."
sudo dnf update -y
echo "Cleaning up..."
sudo dnf clean all
echo "All done!"
