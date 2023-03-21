#Below 18 must not drink
#Between 19 to 45 - Can Drink
#Between 46 to 60 - Risk of Drinking
#Above 60 - Very Risky and not recomanded to drive.
#!/bin/bash
YOB=$1
if [ $YOB =~^[0-9][0-9][0-9] ]; then
    if [ $# -gt 0 ]; then
        CURRENT_YEAR=2023
        CURENT_AGE=$(expr $CURRENT_YEAR - $YOB)
        if [[ $CURENT_AGE -lt 18 && $CURENT_AGE -gt 0 ]]; then
            echo "You Are Below 18 and not allowed to consume alcohol."
        elif [[ $CURENT_AGE -le 45 && $CURENT_AGE -ge 18 ]]; then
            echo "Welcome To Tax Payers as you are above 18 and below 46"
        elif [[ $CURENT_AGE -le 60 && $CURENT_AGE -ge 46 ]]; then
            echo "Drink With Caution as you are above 45."
        elif [[ $CURENT_AGE -le 100 && $CURENT_AGE -ge 60 ]]; then
            echo "DONT DRINK.. VERY RISKY AS U ARE $CURENT_AGE"
        else
            echo "$CURENT_AGE is INVALID"
        fi
    else
        echo "You Have Entered $# Parameters and its invalid."
    fi
else
    echo "INVALID INPUT"
fi
