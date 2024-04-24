#!/bin/bash

PROTOCOL=$1
HOST=$2
ENDPOINT=$3

for (( ; ; ))
do
   curl -o response_body "$PROTOCOL"://"$HOST""$ENDPOINT"
   sleep 5
done