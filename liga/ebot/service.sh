#!/bin/bash
source ./config.sh
echo "$TIMESTAMP Started service.sh" >> $LOGFILE
screen -dmS "logger.sh" ./logger.sh
