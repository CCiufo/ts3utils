#!/bin/bash

script_path=$(readlink $0)
if [ -z $script_path ]; then
	echo "/etc/init.d/ts3 must be symlinked from ts3utils init file"
	exit 1;
fi

source $script_path/config

echo $ts3_user" "$ts3_path

#sudo -u $script_user rm $script_path/logs/ts3server*.log
#sudo -u $script_user $script_path/ts3server_startscript.sh $1
