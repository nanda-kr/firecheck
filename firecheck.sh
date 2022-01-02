#!/bin/bash
filename='targets.list'
while read line; do
#echo $line
#echo --------------------------------
if curl -v --connect-timeout 3 $line 2>&1|grep -q 'Failed to connect'
then
echo $line Failed
else
echo $line Success
fi
done<$filename
