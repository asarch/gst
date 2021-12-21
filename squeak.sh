#!/bin/sh

BASE_PATH="$HOME/Projects/Squeak/Squeak5.3-19435-64bit-202003021730-Linux"
PLUGINS=$BASE_PATH/bin
#SQUEAK_CMD="${SQUEAK_PATH}/bin/squeak -plugins $PLUGINS"
#echo $SQUEAK_CMD
#}`$SQUEAK_CMD $2`
#echo "Hola: " $1
exec "$BASE_PATH/bin/squeak" -plugins $PLUGINS -vm-sound-pulse $1
