#!/bin/bash
#for pid in `cat patchID|grep '^[0-9]'`
for pid in $1
do
	sqlplus / as sysdba << EOF
	select * from apps.ad_bugs where bug_number = $pid;
EOF
done










