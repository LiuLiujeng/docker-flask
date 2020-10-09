#!/bin/bash

echo "Start Nginx ..."
nginx -g "daemon on;"
echo "[Done]"

gunicorn -w 2 -b 0.0.0.0:5000 app:app

#tail -F /var/log/nginx/access.log
