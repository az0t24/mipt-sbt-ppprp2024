#!/bin/bash

PROTOCOL=$1
HOST=$2
PORT=$3
ENDPOINT=$4

for (( ; ; ))
do
   curl -o response_body "$PROTOCOL"://"$HOST":"$PORT""$ENDPOINT"
   sleep 5
done