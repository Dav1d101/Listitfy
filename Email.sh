#!/bin/bash

SENDER=$1
RECEIVER=$2
SUBJECT=$3
MESSAGE=$4

{
echo "HELO $(hostname)"
echo "MAIL FROM:<$SENDER>"
echo "RCPT TO:<$RECEIVER>"
echo "DATA"
echo "From:<$SENDER>"
echo "To:<$RECEIVER>"
echo "Subject: $SUBJECT"
echo "$MESSAGE"
echo "."
echo "QUIT"
} | nc localhost 25
