#!/bin/bash
source ./config.sh
echo "$TIMESTAMP Started logger.sh" >> $LOGFILE
multitail -EX "Completed GOTV demo \"(.*?)\"" "xargs ./uploader.sh" --mergeall $LGSMCONSOLELOGS
