#!/bin/bash
source /home/cs/ebot/scripts/ebot/config.sh
echo "$TIMESTAMP Started logger.sh" >> $LOGFILE
# Check LGSM log for completed demoes and upload it to ebotweb
multitail -EX "Completed GOTV demo \"(.*?)\"" "xargs $SCRIPTPATH/uploader.sh" --mergeall $LGSMCONSOLELOGS
