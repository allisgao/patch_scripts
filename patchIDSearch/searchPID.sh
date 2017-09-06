#!/bin/bash
#for pid in `cat patchID|grep '^[0-9]'`
for pid in $1
do
#	echo -e '\n\n'
#	echo "START"
#	echo $pid
	sqlplus / as sysdba << EOF
	select * from apps.ad_bugs where bug_number = $pid;
EOF
#>> results/${pid}
#	echo "STOP"
#	echo -e '\n'
done










