#!/bin/bash
source $SCRIPTPATH/config.sh
echo "$TIMESTAMP Started service.sh" >> $LOGFILE
screen -dmS "logger.sh" $SCRIPTPATH/logger.sh
