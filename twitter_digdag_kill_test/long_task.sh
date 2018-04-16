#!/bin/bash

trap 'echo "Trap received"; log_msg "trap" ; exit 1' 15 

function log_msg() {
  msg=$*
  D=$( date +"%Y-%m-%d %H:%M:%S" )
  echo "[long task] $D $msg"
}

log_msg "start"
for i in {1..10} ; do 
  echo log_msg "sleep $i/10"
  sleep 1
done
log_msg "end"
