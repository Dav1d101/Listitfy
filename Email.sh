#!/bin/bash

RECEIVER=$1
SUBJECT=$2
MESSAGE=$3

{
echo "HELO $(hostname)"
echo "MAIL FROM:<david.iljuchin@gmail.com>"
echo "RCPT TO:<$RECEIVER>"
echo "DATA"
echo "From:<david.iljuchin@gmail.com>"
echo "To:<$RECEIVER>"
echo "Subject: $SUBJECT"
echo "$MESSAGE"
echo "."
echo "QUIT"
} | nc localhost 25
