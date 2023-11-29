# Dockerized Sliver client
This is a Docker application that runs Sliver client. The purpose is to sidestep Falcon and similar tools that block the downloading and execution of such programs on our workstations.

## Setup
Follow these steps to get Sliver client up and running.
1. Make sure `build.sh` and `run.sh` are executable with `chmod +x build.sh run.sh`.
2. Run `./build.sh`. This will build the Docker image.
3. Replace sliver.cfg with your own config file.
4. You're all done! You can now run the Sliver client with `./run.sh`. 

After building the image, you can change the config file as you wish without re-building. 
