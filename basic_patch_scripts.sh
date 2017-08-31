#!/bin/bash
##############################################
# usage:
# sh SCRIPTS.sh
# e.g :
#	If the patch_id is 123456, then, the command should like:
#		sh 123456.sh
################################################
FILENAME=$BASH_SOURCE 
PATCH_ID=`echo $FILENAME | awk -F. '{print$1}'`
PATCH_DRV=u${PATCH_ID}.drv
source ./PATCH_ENV
cd $PATCH_HOME/$PATCH_ID
echo -e "\033[42;30m $PATCH_ID is patching... \033[0m"
admsi.pl && adpatch driver=$PATCH_DRV 
if [ -d "${PATCH_ID}_ZHS"];then
	cd $PATCH_HOME/${PATCH_ID}_ZHS
	echo -e "\033[42;30m ${PATCH_ID}_ZHS is patching... \033[0m"
	adpatch driver=$PATCH_DRV
else
	echo -e "\033[43;30m  patch ${PATCH_ID} doesn't have CHINESE Packages....  ! \033[0m"
	exit 1
fi	
#echo $FILENAME, $PATCH_ID, $PATCH_DRV, ${PATCH_ID}_ZHS

