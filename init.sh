#!/bin/bash

REPOSITORIES=(
  "git@github.com:iloElias/agrofast-app.git"
  "git@github.com:iloElias/agrofast-api.git"
  "git@github.com:iloElias/agrofast-socket.git"
  "git@github.com:iloElias/agrofast-web.git"
)

for REPO in "${REPOSITORIES[@]}"; do
  git clone "$REPO"
done
