#!/bin/bash
source /home/cs/ebot/scripts/ebot/config.sh
echo "$TIMESTAMP Started service.sh" >> $LOGFILE
# Use Screen to run the logger.sh "as a service"
screen -dmS "logger.sh" $SCRIPTPATH/logger.sh
