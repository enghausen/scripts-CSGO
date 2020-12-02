#!/bin/bash
DOMAIN=ebot.domain.com
LGSMPATH=/home/cs/liga
LGSMCONSOLELOGS=$LGSMPATH/log/console/*-console.log
CSGOPATH=$LGSMPATH/serverfiles/csgo
LOGFILE=./service.log
TIMESTAMP=`date "+%Y-%m-%d %H:%M:%S"`

upload_check () {
  local DEMOFILE=$1
  local MATCHID=${DEMOFILE%%_*}
  local UPLOADSTATUS=$(curl -v --silent https://$DOMAIN/matchs/demo/$MATCHID 2>&1 | grep -oh $DEMOFILE.zip)
  if [ -z $UPLOADSTATUS ]; then
    echo "$TIMESTAMP No demo found for matchid: $MATCHID with the filename $DEMOFILE" >> $LOGFILE
    echo 1
  elif [ $DEMOFILE.zip == $UPLOADSTATUS ]; then
    echo "$TIMESTAMP Demo found for $DEMOFILE" >> $LOGFILE
    echo 0
  elif [ $DEMOFILE.zip != $UPLOADSTATUS ]; then
    echo "$TIMESTAMP Mismatch between the $DEMOFILE and the $UPLOADSTATUS file" >> $LOGFILE
  else
    echo "$TIMESTAMP Not sure why I ended up here! File: config.sh Demofile: $DEMOFILE Matchid: $MATCHID and Uploadstatus: $UPLOADSTATUS" >> $LOGFILE
  fi
}
