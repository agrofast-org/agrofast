#!/bin/bash

declare -A dependencies=(
  [api]="$(pwd)/agrofast-api"
  # [portfolio]="$(pwd)/agrofast-portfolio"
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
