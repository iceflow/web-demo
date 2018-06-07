



#curl -o /dev/null -s -w %{time_namelookup},%{time_connect},%{time_starttransfer},%{time_total},%{speed_download},%{http_code} http://52.83.203.177/login?a=b -X POST -d "xxxxxxxxxxxxxxxxxxxxx"
echo
#curl -o /dev/null -s -w %{time_namelookup},%{time_connect},%{time_starttransfer},%{time_total},%{speed_download},%{http_code} http://52.83.203.177/login -X POST -F "file=@\"nocache.txt\";filename=\"nameinpost\"" 
echo
curl -o /dev/null -s -w %{time_namelookup},%{time_connect},%{time_starttransfer},%{time_total},%{speed_download},%{http_code} http://52.83.203.177/login -X POST -F file=@nocache.txt
echo

exit 0
echo
curl -o /dev/null -s -w %{time_namelookup},%{time_connect},%{time_starttransfer},%{time_total},%{speed_download},%{http_code} http://52.83.203.177/login 
echo
