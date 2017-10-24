#!/usr/bin/env bash
#
# Copyright (c) 2017 Dmitri G. All rights reserved.
#
# run.sh - RUN the Docker container

# Function Setup
function finished { tput setaf 3; echo -e "DONE! ;-)"; tput sgr0; exit 0; }
function die { tput setaf 1; echo "ERROR: $*" >&2; tput sgr0; exit 1; }

# Variables setup
IMG_ID=$1
IP_ADDR=$2

if [ -n "$IMG_ID" ]
  then
      docker run --name nginx_v0.0.1 -v $PWD/html:/usr/share/nginx/html:ro -d -p "$IP_ADDR":8080:80 "$IMG_ID"
  else
      die "USAGE: run.sh \"IMAGE_ID\" \"IP_ADDR\""
fi

# Just a greetings :)
finished

