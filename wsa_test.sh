

D=52.83.203.177
echo "Origin"
curl -o /dev/null -s -w %{time_namelookup},%{time_connect},%{time_starttransfer},%{time_total},%{speed_download},%{http_code} http://$D/login -X POST -d "xxx"^
echo

echo "WSA"
D=wsatest.nwcdcdn.cn
curl -o /dev/null -s -w %{time_namelookup},%{time_connect},%{time_starttransfer},%{time_total},%{speed_download},%{http_code} http://$D/login -X POST -d "xxx"^
echo
