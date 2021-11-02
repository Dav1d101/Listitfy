#!/bin/bash

EINS=I
FUENF=V
ZEHN=X
FUENFZIG=L
HUNDERT=C
FUENFHUNDERT=D
TAUSEND=M
ZAHL=$1
STELLE=${#ZAHL}
for (( i=$STELLE ; i>=1 ; $((i=i-1)) ))
do
	if [ $i == 4 ]
	then
		KLEIN=$TAUSEND
	elif [ $i == 3 ]
        then
     	        GROSS=$FUENFHUNDERT
		KLEIN=$HUNDERT
		KLEIN_NEXT=$TAUSEND
        elif [ $i == 2 ]
        then
		GROSS=$FUENFZIG
                KLEIN=$ZEHN
		KLEIN_NEXT=$HUNDERT
        elif [ $i == 1 ]
        then
		GROSS=$FUENF
                KLEIN=$EINS
		KLEIN_NEXT=$ZEHN
	fi
	STELLE_ROEMISCH=$(($ZAHL%10**$i/10**($i-1)))
	case $STELLE_ROEMISCH in
	
		1)	ERGEBNIS+=$KLEIN
		;;
		2)	ERGEBNIS+=$KLEIN$KLEIN
		;;
		3)	ERGEBNIS+=$KLEIN$KLEIN$KLEIN
		;;
		4)	ERGEBNIS+=$KLEIN$GROSS
		;;
		5)	ERGEBNIS+=$GROSS
		;;
		6)	ERGEBNIS+=$GROSS$KLEIN
		;;
		7)	ERGEBNIS+=$GROSS$KLEIN$KLEIN
		;;
		8)	ERGEBNIS+=$GROSS$KLEIN$KLEIN$KLEIN
		;;
		9)	ERGEBNIS+=$KLEIN$KLEIN_NEXT
		;;
	esac
done
echo $ERGEBNIS
