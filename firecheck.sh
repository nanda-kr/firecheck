#!/bin/bash
filename='targets.list'
#iterate through the endpoints in the file and check if the connection works
while read line; do
if curl -v --connect-timeout 3 $line 2>&1|grep -q 'Failed to connect'
then
echo $line Failed
else
echo $line Success
fi
done<$filename
