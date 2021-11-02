#!/bin/bash -x

cd $(dirname $0)

TMP_FOLDER=/tmp/zabbix
mkdir -p $TMP_FOLDER 

#sleep 10


date >$TMPFOLDER/timestamp.txt

IFS=$'\n'
for LINE in $( cat domains.csv | grep -v ^# )
	do
	ID=$(echo $LINE | cut -d';' -f1)	
	ADD=$(echo $LINE | cut -d';' -f2)	
	echo Checking $ID
	wget -S $ADD -O "$TMP_FOLDER"/"$ID"_response.html 2>"$TMP_FOLDER"/"$ID"_response.log
	done
