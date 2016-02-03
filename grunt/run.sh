#!/bin/bash
if [[ ${GRUNT_DIR} != "" ]]; then
	cd ${GRUNT_DIR}
fi
pwd

if [[ $1 == "init" ]]; then
	npm install
else 
	grunt prod && grunt watch
fi
