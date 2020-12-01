#!/bin/bash
multitail -EX "Completed GOTV demo \"(.*?)\"" "xargs ./uploader.sh" /home/cs/liga/log/console/1-console.log -I /home/cs/liga/log/console/2-console.log
