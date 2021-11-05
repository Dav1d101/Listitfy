#!/bin/bash

DOMAIN=$1
PORT=${2:-80}
{
echo -e "GET http://$DOMAIN HTTP/1.1\r"
echo -e "Host: $DOMAIN\r\n\r\n"
} | nc $DOMAIN $PORT
