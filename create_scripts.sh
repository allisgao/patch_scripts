#!/bin/bash
for pname in `ls |grep "^[0-9]*[1-9][0-9]*$"`
do
	cp basic_patch_scripts.sh ${pname}.sh
done
