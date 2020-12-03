#!/bin/bash
source $SCRIPTPATH/config.sh
echo "$TIMESTAMP Started logger.sh" >> $LOGFILE
multitail -EX "Completed GOTV demo \"(.*?)\"" "xargs $SCRIPTPATH/uploader.sh" --mergeall $LGSMCONSOLELOGS
