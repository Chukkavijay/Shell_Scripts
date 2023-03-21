#!/bin/bash
STRING=$1
REVERSE=''
STR_LENGTH=${#STRING}
for ((I = $STR_LENGTH - 1; I >= 0; I--)); do
    echo ${STRING[*]:$I:1}
    REVERSE=$REVERSE${STRING[*]:$I:1}
done
echo $REVERSE
if [ "${STRING}" = "${REVERSE}" ]; then
    echo "${STRING} IS PALINDROME"
else
    echo "${STRING} IS NOT A PALINDROME"
fi
