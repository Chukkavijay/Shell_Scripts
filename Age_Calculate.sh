#Script to Calculate Right Age Voting
#!/bin/bash
read -p "Please Enter Your Name:" NAME
read -p "Please Your Year Of Birth:" YOB
CURRENT_YEAR=2023
CURENT_AGE=$(expr $CURRENT_YEAR - $YOB)
STATUS=$(expr $CURENT_AGE % 2)
if [ $STATUS -eq 0 ]; then
    if [ $CURENT_AGE -gt 18 ]; then
        echo "Hello $NAME, Your Age Is $CURENT_AGE and You Are Eligible To Vote"
    else
        echo "You Age is $CURENT_AGE which is below 18. You cannot vote now."
    fi
else
    echo "Hello $NAME, Your Age Is $CURENT_AGE and You Cannot Vote As Per Kejriwal"
fi
