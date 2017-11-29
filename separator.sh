#!/bin/bash

while read p; do

r=$(timeout 2 bash -c "</dev/tcp/$p/80"; echo $?)
if [ "$r" = "0" ]; then
     echo "$p 80 is open"
echo "$p" >> alive2.txt
else
     echo "$p 80 is closed"
echo "$p" >> Notalive2.txt

fi
done <log2.txt
echo "All hosts separated"
