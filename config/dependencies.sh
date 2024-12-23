#!/bin/bash

echo "--------------------------------------"
echo "|     Instalando dependencias...     |"
echo "--------------------------------------"

declare -A dependencies=(
  ["$(pwd)/agrofast-app"]="npm install"
  ["$(pwd)/agrofast-api"]="composer install"
  ["$(pwd)/agrofast-socket"]="npm install"
  ["$(pwd)/agrofast-portfolio"]="npm install"
  ["$(pwd)/agrofast-web"]="npm install"
)

for dir in "${!dependencies[@]}"; do
  if [ -d "$dir" ]; then
    echo "Instalando dependências em $dir"
    (cd "$dir" && ${dependencies[$dir]})
  else
    echo "Diretório '$dir' não existe"
  fi
done
