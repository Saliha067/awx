#!/bin/bash

PORT=$1
CBPORT=$[PORT+10]
echo "Callback port is $CBPORT"
echo "Running this one $PORT"
export PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/local:/usr/local/bin
while ! nc -z localhost $PORT; do
   screen -S port$PORT -L -dm /usr/local/bin/appium -p $PORT -cp $CBPORT --session-override
   sleep 2
done