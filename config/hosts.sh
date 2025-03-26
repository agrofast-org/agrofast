#!/bin/bash

HOSTS_ENTRY=(
  "127.0.0.1 local.agrofast.tech"
  "127.0.0.1 local.api.agrofast.tech"
  "127.0.0.1 local.legal.agrofast.tech"
  "127.0.0.1 local.web.agrofast.tech"
  "127.0.0.1 local.console.agrofast.tech"
  "127.0.0.1 local.socket.agrofast.tech"
)

for ENTRY in "${HOSTS_ENTRY[@]}"; do
  if ! grep -q "$ENTRY" /etc/hosts; then
    echo "$ENTRY" | sudo tee -a /etc/hosts > /dev/null
  fi
done
