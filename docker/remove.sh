#!/bin/bash

echo "--------------------------------------"
echo "|      Removendo contêineres...      |"
echo "--------------------------------------"

docker remove agrofast-nginx agrofast-php agrofast-postgres agrofast-redis agrofast-data-bucket create-bucket agrofast-web agrofast-portfolio agrofast-socket
