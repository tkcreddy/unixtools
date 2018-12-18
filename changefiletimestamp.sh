#!/bin/sh
cd $1
for i in `ls 20*`
do
CCYYMMDD=`echo $i |awk -F_ '{print $1}'`
HHMMSS=`echo $i | awk -F_ '{print $2}'`
HHMM=`echo $HHMMSS | cut -c 1-4`
SS=`echo $HHMMSS | cut -c 5-6`
touch -t $CCYYMMDD$HHMM.$SS $i
done
