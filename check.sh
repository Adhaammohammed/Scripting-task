#!/bin/bash

function ID_check(){
    x=$1
    if [ $((x % 2)) -eq 0 ]; then
        echo "Even"
    else
        echo "Odd"
    fi
}

function Mail_check(){
    email=$1
    regex='^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$'

    if [[ $email =~ $regex ]]; then
        return 0  # Return success
    else
        return 1  # Return failure
    fi
}

while IFS=, read -r uname uemail uid; do
    echo "$uname $uemail $uid"

    if [ -z "$uemail" ]; then
        echo "No email"
        continue
    fi

    if [ -z "$uid" ]; then
        echo "No ID $uname $uemail $uid"
        continue
    fi

    if [ -z "$uname" ]; then
        echo "No name"
        continue
    fi

    if Mail_check "$uemail"; then
        echo "The ID of $uemail is $(ID_check $uid) number."
    else
        echo "Invalid email: $uemail"
    fi
done < user.txt
