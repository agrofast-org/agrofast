#!/bin/bash

echo "--------------------------------------"
echo "|       Parando contêineres...       |"
echo "--------------------------------------"

docker stop agrofast-nginx agrofast-php agrofast-postgres agrofast-redis agrofast-data-bucket create-bucket agrofast-web agrofast-portfolio agrofast-socket
