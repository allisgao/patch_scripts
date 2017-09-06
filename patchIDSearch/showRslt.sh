#!/bin/bash

# delete old result_files
rm -rf result/*
# create a result_file for each patch named $pid
for pid in `cat patchID|grep '^[0-9]'`
do
	echo 'chcking '$pid ', please wait...'
	sh searchPID.sh $pid > results/$pid
	echo 'checking '$pid' complete.'
done
# change dir to /results
cd  results/
for rfile in `ls ./`
do 
#	echo $rfile
#	lineNum= `wc -l $rfile|awk '{print $1}'`
#	echo $lineNum
	if [ `wc -l $rfile|awk '{print $1}'` == '16'  ] ;then 
		echo $rfile is not patched.
#		echo $rfile :  `wc -l $rfile|awk '{print $1}'`
	fi
done
