#!/bin/bash
echo "What do you want to convert? Set path to file or directory name: "
read input
echo "Set output: filename.iso: "
read out

genisoimage -o $out.iso $input
#or mkisofs -o $iso.iso $file

exit
