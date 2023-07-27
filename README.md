# Docker container for PhoxiControl

This repository contains a docker file with relative docker-compose.yml for a docker image to use PhoXiControl. PhoXiControl is the driver for the Photoneo scanning devices, providing both a graphical interface and API.

## Requirements

- [docker](https://docs.docker.com/install/)
- [nvidia-docker2](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker)
- [docker-compose](https://docs.docker.com/compose/install/)

Tested on Ubuntu 20.04 with NVIDIA driver version 530 using a Photoneo MotionCam-3D.

## Instructions
- Place your "PhotoneoPhoXiControlInstaller-X.X.X-UbuntuYY-STABLE.run" installation file in a folder called "Installer".
- Run, in the same directory  as the Dockerfile and docker-compose.yml.

        docker compose build phoxi_docker

    to build the phoxi_docker docker image.
- Run
  
        xhost +local:docker
        
    to make sure the GUI of PhoXiControl can be visualized when running it from a docker container.
- Run, in the same directory
  
        docker compose run phoxi_docker

    to create and run a container from the phoxi_docker image.
- Run, when the container is running:
  
        PhoXiControl

    to run the GUI of PhoXiControl.
