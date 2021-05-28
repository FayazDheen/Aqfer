#!/bin/bash

collect_pid=$(ps -o pid,%mem | awk '{print $1 ":" $2 ":"}' | tail -n +2)

app=0
restart_process () {
    kill -19 $1
    child_Process=$(ps -f --ppid $1 | awk '{print $2}' | tail -n +2)
    app=$((app+1))
    printf "`echo "App ${app}: ${1}:"` `echo $child_Process`\n"
}

MAX_THRESHOLD=90.0
for i in $collect_pid
do
    PID=$(echo $i | cut -d: -f1)
    Mem=$(echo $i | cut -d: -f2)

    if [ 1 -eq `echo "${Mem} < ${MAX_THRESHOLD}" | bc` ] 
    then
        restart_process $PID
    fi
done
