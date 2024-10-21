#!/bin/bash

echo "--------------------------------------"
echo "|     Instalando dependencias...     |"
echo "--------------------------------------"

declare -A dependencies=(
  ["$(pwd)/agrofast-app"]="npm install"
  ["$(pwd)/agrofast-api"]="composer install"
  ["$(pwd)/agrofast-socket"]="npm install"
  ["$(pwd)/agrofast-web"]="npm install"
)

for dir in "${!dependencies[@]}"; do
  if [ -d "$dir" ]; then
    echo "Installing dependencies in $dir"
    (cd "$dir" && ${dependencies[$dir]})
  else
    echo "Directory $dir does not exist"
  fi
done
