DOCKER WORDPRESS

This is an application for WordPress. We are going to need the application itself,Wordpress, a database, in this case MariaDB and finally a proxy server, among others services, for load-balancing the containers.

You can install all the files by yourself, following the guide that follows or you can download the app itself from the GitHub. https://github.com/VissarionM/docker-wordpress. 

For those who know, there is always the option to pull the latest images (image:latest) in the docker compose file.

WINDOWS
Download from Microsoft Store, WSL linux distributions

Docker installation instructions
https://docs.docker.com/desktop/install/windows-install/

Make sure to enable WSL integration in Docker's Resources. Also, enable each distribution you want to use in the list.

LINUX 
Ubuntu Jammy Cloud LTS server (https://cyclades.okeanos-knossos.grnet.gr/ui/)
Ubuntu 22.04.3 LTS
Ubuntu 22.04 LTS
Ubuntu 20.04.6 LTS

Docker installation instructions
https://docs.docker.com/engine/install/ubuntu/

IMAGES
Create a folder for each image, then download all the files in the links below and place them inside.

MariaDB version
https://github.com/MariaDB/mariadb-docker/blob/44ed2e231207787c08d56acc94b79d5f06efe006/11.2/Dockerfile

Wordpress version
https://github.com/docker-library/wordpress/tree/2eba26f088c12dea179623ee8af5cb52e6f60c4a/latest/php8.3/fpm

Nginx version
https://github.com/nginxinc/docker-nginx/blob/3180cdbec313dc4a9f6dd1109ae66adaf98f11fb/mainline/alpine/Dockerfile

SET UP
For Wordpress, we use php-fpm that listens to port:9000 because it runs the best with Nginx.
We use an Nginx-alpine because it is lightweight, stable and runs smoothly with fpm.
For nginx.conf, copy or download the file in the GitHub repo link that was given earlier. 

Make sure that all files can be executed, else use the "chmod +x <my_script>" command inside the folder of each script.

Make sure that all needed ports have access through the firewall. 
ssh/Openssh, port:22/tcp
Nginx, port:80/tcp
php-fpm, port:9000/tcp
Docker ports for swarm purposes: 2377/tcp, 4789/udp, 7946/tcp and udp

BUILD IMAGES
Execute the script "./build.sh" to build all the images.

RUN CONTAINERS
Execute the command "docker compose up -d" to run the containers.
    
SHOW RUNNING CONTAINERS
Execute the command "Docker ps".

USE APP
Execute the script "./browser.sh".
If there is no browser in Ubuntu, then you can, 
    "sudo apt install lynx"
    or
    "sudo apt install links".
These are tools for CLI web browsing.

STOP CONTAINERS
Execute the command "docker compose down" to run the containers.

DOCKER SWARM
Use the command "docker swarm init --advertise-addr <IP address>
CAUTION: The docker don't have the native network docker0 in the Windows networks. Also, the windows use WSL(Hyper-V Firewall) which communicates with the installed WSL machines. That means the WSL machine cannot communicate outside with it's IP address, with the exception of the Windows IP address. Docker uses docker0 network that runs with linux, so in order to run a swarm manager, use linux OS.