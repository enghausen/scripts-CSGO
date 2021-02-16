#!/bin/bash
source /home/enghausen/environments/sherlock-haus/bin/activate
cd /home/enghausen/environments/sherlock-haus/discord-gsm-bot/
if ! screen -list | grep -q "sherlock-haus"; then
    screen -dmS sherlock-haus python /home/enghausen/environments/sherlock-haus/discord-gsm-bot/bot.py
fi
