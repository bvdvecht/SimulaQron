#!/bin/bash

# TEST_PIDS=$(ps aux | grep python | grep -E "Test" | awk {'print $2'})
# if [ "$TEST_PIDS" != "" ]
# then
#         kill -9 $TEST_PIDS
# fi

ALL_PIDS=$(wmic process get processid,commandline | grep python.exe | grep -E "Test" | awk '{printf "//pid %s ",$NF}')
if [ "$ALL_PIDS" != "" ]
then
        taskkill -f $ALL_PIDS
fi