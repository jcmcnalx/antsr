# antsr
-------
  - An R package providing ANTs feature in R
  - http://stnava.github.io/ANTsR/
  - Current Version 0.3.1
  - Authors
    - https://github.com/stnava

--------

The Dockerfile and indentity.sh script will create an Ubuntu 14.04 container with R v3.2.0 "Full of Ingredients" with ANTsR installed + ability to mount host storage.

Requirements
--------

- Linux server or workstation
  - [Docker](https://www.docker.com//) >= 1.5

Installation
-------
Download Git repository
- git clone https://github.com/jcmcnalx/antsr.git

Cd into downloaded repo
- cd antsr

Execute identity.sh in same directory as Dockerfile
- ./identity.sh

Build Docker container
  - docker build -t YOUR_CONTAINER_NAME .

Note: The container is built using Phusion's Ubuntu 14.04 baseimage
http://phusion.github.io/baseimage-docker/

Run container
--------
Once built run the container with options to mount your home directory
  - $ docker run -it -v /home/USERNAME:/home/USERNAME YOUR_CONTAINER_NAME /bin/bash
  - Replace USERNAME with your username

Run R and show installed packages
  - R
    >installed.packages()
    
ANTsR official documentation
  https://github.com/stnava/ANTsR/releases/download/v0.3.1/ANTsR-manual.pdf
  http://stnava.github.io/ANTsR
  

----------
Tested on Docker hosts:
  - Ubuntu 14.04
  - CentOS 6.x
  - RHEL 6.x
  - Boot2docker Windows
