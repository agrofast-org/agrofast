#!/bin/bash

echo "--------------------------------------"
echo "|      Removendo contêineres...      |"
echo "--------------------------------------"

docker remove agrofast-nginx agrofast-php-fpm agrofast-postgres agrofast-redis agrofast-data-bucket agrofast-web agrofast-portfolio agrofast-socket
