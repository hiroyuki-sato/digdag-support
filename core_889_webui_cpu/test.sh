#!/bin/bash

#for i in {1..60} ; do
for i in {1..15} ; do
  if [ $i -ne 1 ] ; then
    sleep 1
  fi
  d=$( date +"%Y-%m-%d %H:%M:%S:" )
  printf "%s" $d
  echo "$d" | openssl sha256
done
