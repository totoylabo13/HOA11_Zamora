FROM ubuntu
MAINTAINER zamora

# Skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# Update
RUN apt-get -y update

# Update packages
RUN apt packages; apt dist-upgrade -y

# Install packages
RUN apt install -y apache2 mariadb-server

# Entry point for apache
ENTRYPOINT apache2ctl -D FOREGROUND 
