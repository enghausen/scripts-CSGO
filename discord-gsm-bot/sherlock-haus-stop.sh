#!/bin/bash
screen -ls sherlock-haus | grep -E '\s+[0-9]+\.' | awk -F ' ' '{print $1}' | while read s; do screen -S $s -p 0 -X stuff "^C"; done
