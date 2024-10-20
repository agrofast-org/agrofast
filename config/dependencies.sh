#!/bin/bash

declare -A dependencies=(
  ["/agrofast-app"]="npm install"
  ["/agrofast-api"]="composer install"
  ["/agrofast-socket"]="npm install"
  ["/agrofast-web"]="npm install"
)

for dir in "${!dependencies[@]}"; do
  if [ -d "$dir" ]; then
    echo "Installing dependencies in $dir"
    (cd "$dir" && ${dependencies[$dir]})
  else
    echo "Directory $dir does not exist"
  fi
done
