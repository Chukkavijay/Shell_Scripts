#!/bin/bash
APPNAME=$1
echo "Checking If The App $APPNAME Installed Or Not..."
service $APPNAME status | grep -E -i 'running|inactive'
if [ $? -eq 0 ]; then
    echo "$APPNAME is Valid.."
    echo "Checking Status of The Application $APPNAME"
    service $APPNAME status | grep -i running
    if [ $? -eq 0 ]; then
        echo "$APPNAME is running already.."
    else
        echo "Starting $APPNAME"
        service $APPNAME start
    fi
else
    echo "$APPNAME is INVALID or NOT INSTALLED"
fi
