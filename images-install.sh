 #!/bin/bash

# Create a directory for the project
mkdir -p ~/downloads/Project2024

# MariaDB
mkdir -p ~/downloads/Project2024/MariaDB
cd ~/downloads/Project2024/MariaDB
wget https://raw.githubusercontent.com/MariaDB/mariadb-docker/44ed2e231207787c08d56acc94b79d5f06efe006/11.2/Dockerfile
wget https://raw.githubusercontent.com/MariaDB/mariadb-docker/44ed2e231207787c08d56acc94b79d5f06efe006/11.2/docker-entrypoint.sh
wget https://raw.githubusercontent.com/MariaDB/mariadb-docker/44ed2e231207787c08d56acc94b79d5f06efe006/11.2/healthcheck.sh
chmod +x docker-entrypoint.sh healthcheck.sh

# WordPress
mkdir -p ~/downloads/Project2024/WordPress
cd ~/downloads/Project2024/WordPress
wget https://raw.githubusercontent.com/docker-library/wordpress/2eba26f088c12dea179623ee8af5cb52e6f60c4a/latest/php8.3/fpm/Dockerfile
wget https://raw.githubusercontent.com/docker-library/wordpress/2eba26f088c12dea179623ee8af5cb52e6f60c4a/latest/php8.3/fpm/docker-entrypoint.sh
wget https://raw.githubusercontent.com/docker-library/wordpress/2eba26f088c12dea179623ee8af5cb52e6f60c4a/latest/php8.3/fpm/wp-config-docker.php
chmod +x docker-entrypoint.sh

# Nginx
mkdir -p ~/downloads/Project2024/Nginx
cd ~/downloads/Project2024/Nginx
wget https://raw.githubusercontent.com/nginxinc/docker-nginx/3180cdbec313dc4a9f6dd1109ae66adaf98f11fb/mainline/alpine/Dockerfile
    
cd ..
cd ..
cd ..

echo "Download complete."