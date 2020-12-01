#!/bin/bash
demofile=$1
matchid=${demofile%%_*}
uploadCheck=$(curl -v --silent https://ebot.doamin.com/matchs/demo/$matchid 2>&1 | grep -oh $demofile.zip)

if [ -z $uploadCheck ]
then
      echo "No demo found for matchid: $matchid with the filename $demofile" >> ./cleaner.log

elif [ $demofile.zip == $uploadCheck ]
then
        echo "Match found for $demofile" >> ./cleaner.log
        rm /home/cs/liga/serverfiles/csgo/$demofile
        rm /home/cs/liga/serverfiles/csgo/ebot_$matchid_*
fi
