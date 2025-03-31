# Docker Commands for Beginners

This document provides essential Docker commands for beginners. Docker is a platform used for developing, shipping, and running applications inside containers.

## Docker Installation

### For Ubuntu
1. Update package information:

    ```sh
    sudo apt-get update
    ```

2. Install Docker:

    ```sh
    sudo apt install docker.io
    ```

3. Start Docker service:

    ```sh
    sudo systemctl start docker
    ```

4. Enable Docker to start at boot:

    ```sh
    sudo systemctl enable docker
    ```

5. Verify Docker installation:

    ```sh
    docker --version
    ```

### For Windows
1. Download Docker Desktop from the official website:
   [Docker Desktop Download](https://www.docker.com/products/docker-desktop)

2. Install Docker Desktop and follow the installation steps.

3. Verify Docker installation by running the following command in PowerShell:

    ```sh
    docker --version
    ```

## Basic Docker Commands

### 1. Docker Version
To check the installed version of Docker:

```sh
docker --version

```
### 2. Docker Info
To display system-wide information about Docker:

```sh
docker info
```
### 3. Docker Images
To list all Docker images:

```sh
docker images
```
### 4. Docker Pull
To download an image from Docker Hub:

```sh
docker pull <image-name>
For example:docker pull ubuntu
```
### 5. Docker Build
To build an image from a Dockerfile:

```sh
docker build -t <image-name> .
For example:docker build -t my-app .

```
### 6. Docker Run
To run a container from an image:

```sh
docker run <image-name>
For example:docker run -d -p 80:80 my-app
```
-d runs the container in detached mode.

-p maps ports from the host to the container.

### 7. Docker PS
To list all running containers:
```sh
docker ps
```
### 8. Docker Stop
To stop a running container:
```sh
docker stop <container-id or container-name>
For example:docker stop my-app
```
### 9. Docker Start
To start a stopped container:
```sh
docker start <container-id or container-name>
```
### 10. Docker Restart
To restart a running or stopped container:
```sh
docker restart <container-id or container-name>
```
### 11. Docker Exec
To execute a command inside a running container:
```sh
docker exec -it <container-id or container-name> <command>
For example, to open a bash shell inside a container:
docker exec -it my-app /bin/bash
```

### 12. Docker Logs
To view logs of a running container:
```sh
docker logs <container-id or container-name>
```
### 13. Docker Remove (Container)
To remove a stopped container:
```sh
docker rm <container-id or container-name>
```
### 14. Docker Remove (Image)
To remove a Docker image:
```sh
docker rmi <image-id or image-name>
For example:docker rmi my-app
```
### 15. Docker Compose
To use Docker Compose, ensure that you have a **docker-compose.yml** file.

1.To start services defined in a **docker-compose.yml** file:
```sh
docker-compose up
```
2.To stop all services:
```sh
docker-compose down
```
3.To build images defined in ***docker-compose.yml***:
```sh
docker-compose build
```
4.To view logs from Docker Compose:
```sh
docker-compose logs
```
### Conclusion
These commands are essential for working with Docker. You can further explore the Docker documentation to dive deeper into advanced topics.

🚀 Happy Dockering!
