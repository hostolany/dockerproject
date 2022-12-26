#!/bin/sh

flag=$(wc -l /project/flag.txt | cut -b 1)

if [ "$flag" -gt 0 ]
then
    token=$(cat token.txt); expect scale-out.exp "$token"
else
    expect scale-in.exp
fi
