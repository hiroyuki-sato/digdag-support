#!/bin/bash

for i in 0 1 2 3 4 5 6 7 8 9 ; do 
  perl -le 'print scalar(localtime())," ","'$i'" x 10_000'; 
#  perl -le 'print scalar(localtime())," ","'$i'" x 10'; 
  sleep 5 
done



#echo "$@ said \"I'm using $(date)\""
#sleep 1
