#!/bin/bash

declare -A dependencies=(
  [app]="$(pwd)/agrofast-app"
  [api]="$(pwd)/agrofast-api"
  [socket]="$(pwd)/agrofast-socket"
  [web]="$(pwd)/agrofast-web"
)

for dir in "${dependencies[@]}"; do
  if [ -d "$dir" ]; then
    echo "Updating $dir"
    (cd "$dir" && git pull)
  else
    echo "Directory $dir does not exist"
  fi
done
