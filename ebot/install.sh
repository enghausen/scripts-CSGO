#!/bin/bash
# Tested on Debian 10 and will install multitail and curl
sudo apt-get update
sudo apt-get -y install multitail curl
wget https://raw.githubusercontent.com/enghausen/scripts-CSGO/main/ebot/cleaner.sh
wget https://raw.githubusercontent.com/enghausen/scripts-CSGO/main/ebot/config.sh
wget https://raw.githubusercontent.com/enghausen/scripts-CSGO/main/ebot/logger.sh
wget https://raw.githubusercontent.com/enghausen/scripts-CSGO/main/ebot/service.sh
wget https://raw.githubusercontent.com/enghausen/scripts-CSGO/main/ebot/uploader.sh
chmod +x cleaner.sh config.sh logger.sh service.sh uploader.sh
echo "Remember to change the domain and paths in config.sh. You also need to change the source path in every *.sh file to get the right path for the config.sh"
