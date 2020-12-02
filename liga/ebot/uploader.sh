#!/bin/bash
source ./config.sh
DEMOFILE=$1
curl -F "file=@$CSGOPATH/$1" https://$DOMAIN:12360/upload
UPLOADCHECK=$(upload_check $DEMOFILE)

if [ $UPLOADCHECK == 1 ]; then
  echo "$TIMESTAMP Upload failed for $DEMOFILE" >> $LOGFILE
elif [ $UPLOADCHECK == 0 ]; then
  echo "$TIMESTAMP Upload completed for $DEMOFILE" >> $LOGFILE
else
  echo "$TIMESTAMP Not sure why I ended up here! File: uploader.sh Demofile: $DEMOFILE and Uploadcheck: $UPLOADCHECK" >> $LOGAFILE
fi
