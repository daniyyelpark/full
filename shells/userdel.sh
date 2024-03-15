#!/bin/bash

i=1
cnt=$2

while [ $i -le $cnt ]; do
    userdel -r user$i
    let i+=1
done
echo Complete!!
