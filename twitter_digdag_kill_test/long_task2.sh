#!/bin/bash

trap 'echo "Trap received"; log_msg "trap" ; exit 1' 15 

function log_msg() {
  msg=$*
  D=$( date +"%Y-%m-%d %H:%M:%S" )
  echo "[long task] $D $msg"
}

log_msg "start"
sleep 30
log_msg "end"
