#!/bin/bash



while [ 1 ]; do
	if [ `ps aux | grep app.py | grep -cv grep` -eq 0 ]; then
		nohup python app.py > /dev/null 2>&1 &
	fi
	sleep 5
done
