#!/bin/bash


BASENAME=test-client
INTERVAL=30

function do_log() 
{
LOG=$1

T=$(date '+%Y/%m/%d %T')

#echo "==local=="
echo -n $T >> $LOG
echo -n ",Localhost," >> $LOG
E=http://localhost/login
echo "curl -o /dev/null -s -w %{time_namelookup},%{time_connect},%{time_starttransfer},%{time_total},%{speed_download},%{http_code} -X POST -F file=@nocache.txt $E >> $LOG"
echo >> $LOG

return

#echo "== CloudFront =="
echo -n $T >> $LOG
echo -n ",AWS-CF," >> $LOG
E=http://aw-apiproxy.ctrip.com/api/framework/images4/target/nocache

curl -o /dev/null -s -w %{time_namelookup},%{time_connect},%{time_starttransfer},%{time_total},%{speed_download},%{http_code} -X POST -F file=@nocache.txt "$E?domain=l3&region=%E6%9C%AA%E7%9F%A5&type=ec2&uuid=9ea4e0b8-68a8-4ec5-b1c7-9e6942014ccb" -H "Expect: " >> $LOG
echo >> $LOG

}


## Main ##
mkdir -p logs/$BASENAME/

#echo "Date,Provider,time_namelookup,time_connect,time_starttransfer,time_total,speed_download,http_code" > $LOG

while  [ 1 ]; do
	LOG_FILE="logs/$BASENAME/$BASENAME.$(date +%Y-%m-%d).csv"

	if [ ! -f ${LOG_FILE} ]; then
		echo "Date,Provider,time_namelookup,time_connect,time_starttransfer,time_total,speed_download,http_code" > ${LOG_FILE}
	fi

	do_log ${LOG_FILE}

	exit 0
	sleep $INTERVAL
done

exit 0
