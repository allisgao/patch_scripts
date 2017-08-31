#!/bin/bash
cd ./
for i in `ls *.zip`
do
#	echo "hello,  $i"
	/usr/bin/unzip -o $i
#	echo -e "\033[42 $i unzipped successfully!"
	echo -e "\033[42;30m $i Extract successfully! \033[0m" 
#	if [ "$0" = "0" ]
#		then
#		echo -e "\033[42;37m $i Extract successfully! \033[0m" 
#	else
#		echo -e "\033[41;37m $i Extract failed !!!!!! \033[0m" 
#	fi
done
