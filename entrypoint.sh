#!/bin/sh

# Generate config.json from environment variables
echo "${INSTANCE_URLS}" > /usr/share/nginx/html/config.json

# Start Nginx
nginx -g 'daemon off;'
