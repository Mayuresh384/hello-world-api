#!/bin/bash
cd /home/ec2-user/hello-world-api
pm2 stop all || true
pm2 start app.js --name hello-world-api
