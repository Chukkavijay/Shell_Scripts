#!/bin/bash
FILE_NAME=$1
if [ $# -gt 0 ]; then
    cat $FILE_NAME
    if [ $? -eq 0 ]; then
        echo "$FILENAME Already Exists"
    else
        touch $FILENAME
    fi
else
    echo "Please Provide Valid File Path"
fi
