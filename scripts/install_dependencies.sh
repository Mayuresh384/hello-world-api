#!/bin/bash

# Define the application directory
APP_DIR="/home/ec2-user/hello-world-api"

# Change ownership of the application directory to the ec2-user
sudo chown -R ec2-user:ec2-user "$APP_DIR"

# Create a directory for global npm packages
mkdir -p /home/ec2-user/.npm-global
npm config set prefix '/home/ec2-user/.npm-global'

# Add npm binaries to PATH
echo 'export PATH=/home/ec2-user/.npm-global/bin:$PATH' >> /home/ec2-user/.bashrc
source /home/ec2-user/.bashrc

# Navigate to the application directory
cd "$APP_DIR"

# Install npm dependencies with --unsafe-perm to avoid permission issues
npm install --unsafe-perm

# Install PM2 globally
npm install pm2 -g --unsafe-perm
