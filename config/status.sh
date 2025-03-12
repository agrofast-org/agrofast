#!/bin/bash

declare -A dependencies=(
  [api]="$(pwd)/agrofast-api"
  [portfolio]="$(pwd)/agrofast-portfolio"
  [socket]="$(pwd)/agrofast-socket"
  [web]="$(pwd)/agrofast-web"
)

for dir in "${dependencies[@]}"; do
  if [ -d "$dir" ]; then
    echo "========================================"
    status=$(cd "$dir" && git status --porcelain)
    if [ -n "$status" ]; then
      echo "Changes in $dir:"
      echo "$status"
    else
      echo "No changes in $dir"
    fi
    echo "========================================"
  else
    echo "Directory $dir does not exist"
  fi
done
