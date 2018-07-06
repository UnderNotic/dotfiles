#!/bin/bash

#IP=$(ipconfig getifaddr wifi0)
IP=$(hostname -I | awk {'print $1}')
PUB_IP=$(dig +short myip.opendns.com @resolver1.opendns.com)

INTERNET=''

echo -n "$INTERNET $IP | $PUB_IP"


