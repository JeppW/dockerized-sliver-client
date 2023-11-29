# mount the sliver.cfg file as a volume, so we don't have to rebuild
# after changing the config file
sudo docker run --network host -v ./sliver.cfg:/sliver/sliver.cfg -it sliver-client