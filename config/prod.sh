#!/bin/bash

for file in config/conf/*.conf; do
  filename=$(basename "$file")
  project_name="${filename%%.*}"
  cp "$file" "/opt/nginx/conf/${project_name}-${filename}"
done

docker restart mapdata-nginx
