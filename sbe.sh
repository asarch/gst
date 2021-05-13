#!/bin/sh

# Aqui deberiamos de usa la maquina virtual de
# OpenSmalltalk-VM en lugar de la maquina por default

image=SBE.image

case "$1" in
	seaside)
		cd ~/Projects/Squeak/Squeak5.3*/shared
		image=Seaside.image
		;;
	5.2)
		cd ~/Projects/Squeak/Squeak5.2*/shared
		;;
	*) # The most recent version
		cd ~/Projects/Squeak/Squeak5.3*/shared
		;;
esac

#../squeak.sh SBE.image

# You can use the Piano morph with this sound system
../bin/squeak -vm-sound-pulse $image
