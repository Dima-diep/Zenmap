#!/bin/bash
OPTIONS=$(whiptail --title  "Zenmap" --checklist \
"Select Option" 15 60 4 \
"-Pn" "" OFF \
"-v" "" OFF \
"-A" "" OFF \
"-sn" "" OFF \
"-n" "" OFF \
"-R" "" OFF \
"-6" "" OFF \
"-O" "" OFF \
"-sU" "" OFF \
"-V" "" OFF \
"-h" "" OFF \
"-sI" "" OFF \
"-sY" "" OFF \
"-sZ" "" OFF \
"-6" "" OFF \
"-sV" "" OFF \
"-vv" "" OFF \
"-r" "" OFF \
"-F" "" OFF \
"-b" "" OFF \
"-sT" "" OFF \
"-sA" "" OFF \
"-sW" "" OFF \
"-sM" "" OFF \
"-sS" "" OFF 3>&1 1>&2 2>&3)
 
exitstatus=$?
if [ $exitstatus = 0 ];  then
    clear
    OPT=$(whiptail --title  "Zenmap" --inputbox  "Add Other options if you want" 10 60 3>&1 1>&2 2>&3)

    exitstatus=$?
    if [ $exitstatus = 0 ]; then
        clear
        IP=$(whiptail --title  "Zenmap" --inputbox  "Write IP/domain" 10 60 3>&1 1>&2 2>&3)
 
        exitstatus=$?
        if [ $exitstatus = 0 ];  then
            clear
            nmap $OPTIONS $OPT $IP
        else
            exit && clear
        fi
    else
        exit && clear
    fi
else
    exit && clear
fi
