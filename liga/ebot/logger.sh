#!/bin/bash
multitail -EX "Completed GOTV demo \"(.*?)\"" "echo >> complete.txt" /home/cs/liga/log/console/1-console.log -I /home/cs/liga/log/console/2-console.log
