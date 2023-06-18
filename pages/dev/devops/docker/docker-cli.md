# Docker Command Line Interface (CLI)

## Docker info

- `docker images`: list all images
- `docker ps`: list running containers

## Build image

- `docker build -t <image-name> .`: build image from Dockerfile in current directory
- `docker build -t <image-name> <path-to-dockerfile>`: build image from Dockerfile in specified directory

## Executing commands in a container

- `docker exec -it <alpine-container-id> sh`: run alpine image in interactive mode container
- `docker exec -it <container> /bin/bash`: run bash in container (if bash is installed)
