#!/bin/bash
# Start the Backend
cd /home/ec2-user/student-system/backend
pm2 restart backend-api || pm2 start server.js --name "backend-api"

# Start the Frontend (Using PM2 to serve the static HTML files)
cd /home/ec2-user/student-system/frontend
pm2 restart frontend-app || pm2 serve . 3000 --name "frontend-app" --spa
