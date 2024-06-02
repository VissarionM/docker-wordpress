# Docker WordPress Application

This repository contains scripts and configurations for setting up a WordPress application using Docker. It utilizes the following services:

- MariaDB database
- wordpress-fpm
- Nginx

## Getting Started

To set up the WordPress application, follow these steps:

1. Build the Docker images by running:
    ```bash
    ./build.sh
    ```

2. Start the Docker containers in detached mode:
    ```bash
    docker-compose up -d
    ```

3. Run the application script:
    ```bash
    ./App.sh
    ```

For more detailed information on installation, Dockerfile, building images, configurations, and dependencies, refer to the `Guide-asciidoc.adoc` file.