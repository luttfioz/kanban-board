#!/bin/bash

SRC_PATH=/opt/app-root/src
echo "`date` - Downloading config file from "${SRC_PATH}

# Run nginx
nginx -g "daemon off;"