#!/bin/bash
# Go to backend and install npm packages
cd /home/ec2-user/student-system/backend
npm install

# Install PM2 globally so we can run the apps in the background
sudo npm install -g pm2
