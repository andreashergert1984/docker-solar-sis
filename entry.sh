#!/bin/bash
if [ -d /config ]; then
	echo "/config exists"
	if [ -d /config/solar-sis ]; then
		echo "config-dir exists. try to start"
		cd /config/solar-sis
		node project.js
	else
		echo "config-dir does not exist. copiing template"
		mkdir /config/solar-sis
		cp -Rv /root/PIP4084/* /config/solar-sis/
	fi
else
	echo "creating /config";
	mkdir /config
fi
