#!/bin/bash

FORCEDKILL=`less RaidTest/Monocle/monocle/config.py | grep "FORCED_KILL ="| awk '{print $3}'`

if [ $FORCEDKILL = "True" ]; then
for i in RaidTest/Monocle*;
do mkdir -p ~/Storage/$i;
cp $i/monocle/config.py ~/Storage/$i/config.py;
sed -i 's/FORCED_KILL = True/FORCED_KILL = False/g' $i/monocle/config.py;
done

else
for i in RaidTest/Monocle*;
do mkdir -p ~/Storage/$i;
cp $i/monocle/config.py ~/Storage/$i/config.py;
sed -i 's/FORCED_KILL = False/FORCED_KILL = True/g' $i/monocle/config.py;
done

fi
