#!/bin/bash
echo "Blank Screen"
if [ $1 ]
then
	echo "Blank Screen ON ($1 secondes)"
	xset +dpms s on s blank s $1 0 s expose
else
	read -p "[1] disable or [2] enable: " A

	if [ $A == 1 ]
	then
		echo "Blank Screen OFF"
		xset -dpms s off s noblank s 0 0 s noexpose
	elif [ $A == 2 ]
	then
		echo "Blank Screen ON (2min)"
		xset +dpms s on s blank s 120 0 s expose
	else
		echo "Enter 1 or 2 !"
	fi
fi

exit
