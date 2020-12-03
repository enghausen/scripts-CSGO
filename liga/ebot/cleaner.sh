#!/bin/bash
source /home/cs/liga/scripts/ebot/config.sh
DEMOFILE=$1
MATCHID=${DEMOFILE%%_*}
UPLOADCHECK=$(upload_check $DEMOFILE)

# Statement to remove old .dem and ebot round backup files
if [ $UPLOADCHECK == 1 ]; then
  echo "$TIMESTAMP No demo no cleaning! Missing the Demofile: $DEMOFILE - Need a human to clean it for me! :-)" >> $LOGFILE
elif [ $UPLOADCHECK == 0 ]; then
  echo "$TIMESTAMP $DEMOFILE was found online! Removing the old $DEMOFILE file and backup files to avoid clutter" >> $LOGFILE
  COUNT=$(rm -vf $CSGOPATH/$DEMOFILE | wc -l)
  echo "$TIMESTAMP Removed $COUNT demo file named $DEMOFILE" >> $LOGFILE
  COUNT=$(rm -vf $CSGOPATH/ebot_${MATCHID}_* | wc -l)
  echo "$TIMESTAMP Removed $COUNT backup files" >> $LOGFILE
else
  echo "$TIMESTAMP Not sure why I ended up here! File: cleaner.sh Demofile: $DEMOFILE Matchid: $MATCHID and Uploadcheck: $UPLOADCHECK" >> $LOGFILE
fi
