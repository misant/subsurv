#!/bin/bash
ps -aux | grep rtsp | while read -r line ; do
    echo "Processing $line"
    proc_id=`echo $line | awk '{print($2)}'`
    proc_time=`echo $line | awk '{print($9)}'`
    cur_time=`date +%H%M`
    echo "Now is $cur_time ID = $proc_id, started at ${proc_time//:}"
    if (( $cur_time - ${proc_time//:} > 5 )); then
        echo "Need to kill, $cur_time and ${proc_time//:}"
        kill -9 $proc_id
        echo "Process $proc_id killed"
    else
        echo "No need to kill, $cur_time and ${proc_time//:}"
    fi
