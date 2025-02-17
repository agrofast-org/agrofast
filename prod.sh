#!/bin/bash

echo "--------------------------------------"
echo "|      Clonando repositórios...      |"
echo "--------------------------------------"

REPOSITORIES=(
  "git@github.com:agrofast-org/agrofast-api.git"
  "git@github.com:agrofast-org/agrofast-portfolio.git"
  "git@github.com:agrofast-org/agrofast-socket.git"
  "git@github.com:agrofast-org/agrofast-web.git"
)

for REPO in "${REPOSITORIES[@]}"; do
  REPO_NAME=$(basename "$REPO" .git)
  if [ -d "$REPO_NAME" ]; then
    echo "O repositório $REPO_NAME já existe. Pulando..."
  else
    git clone "$REPO"
  fi
done

./config/dependencies.sh
