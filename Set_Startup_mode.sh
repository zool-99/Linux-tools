#!/bin/bash

read -p "Choose Starup Mode : [1] GUI or [2] Console" A

if [ $A == 1 ]
then
	echo "Next start on GUI"
	systemctl set-default graphical.target
elif [ $A == 2 ]
then
	echo "Next start on Console"
	systemctl set-default multi-user.target
else
	echo "Enter 1 or 2 !"
fi

exit
