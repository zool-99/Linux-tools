#!/bin/bash

A=$(find . -type f -empty | wc -l)
echo -e "\nChecking Empty files: $A found(s)\n"

B=$(find . -type d -empty | wc -l)
echo -e "Checking Empty directory: $B found(s)\n"

sleep 1

read -p "Remove Empty Dir? (y/n)" remove

if [ $remove = "y" ];
then
	read -p "Save list of empty dir in empty_list.txt? (y/n)" save
	
	if [ $save = "y" ];
	then
		find . -type d -empty > empty_list.txt
	else
		echo "OK removing..."
	fi	

	find . -type d -empty -exec rmdir {} +;
else
	exit
fi

exit
