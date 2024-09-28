#!/bin/bash
set -e  # Exit immediately if a command exits with a non-zero status

# Navigate to the application directory
cd /home/ec2-user/hello-world-api

# Install application dependencies
npm install

# Install pm2 globally with sudo
sudo npm install pm2 -g

# Start the application using pm2
pm2 start app.js --name "hello-world-api"

# Save the pm2 process list and configure it to start on boot
pm2 save
sudo pm2 startup systemd -u ec2-user --hp /home/ec2-user
