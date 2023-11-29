FROM ubuntu:latest

# install useful essentials
RUN apt-get update && apt-get install -y wget nano dnsutils net-tools iputils-ping

# create directory for sliver-related stuff
RUN mkdir /sliver
WORKDIR /sliver

# download and setup sliver client
RUN wget https://github.com/BishopFox/sliver/releases/download/v1.5.41/sliver-client_linux
RUN mv sliver-client_linux sliver-client
RUN chmod +x sliver-client

# import the config file and run sliver-client
ENTRYPOINT if [ ! -f /sliver/sliver.cfg ]; then echo "Sliver config file not found."; fi && ./sliver-client import sliver.cfg 2>/dev/null && ./sliver-client