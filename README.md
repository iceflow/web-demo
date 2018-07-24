# web-demo




# Referal
http://flask.pocoo.org/docs/1.0/
https://github.com/realpython/flask-by-example
https://realpython.com/flask-by-example-part-1-project-setup/#project-setup

```Bash
# First time
yum install python36 python36-virtualenv
python3.6 -m venv env
source env/bin/activate
#.... Do your scripts here ...
cd flask-by-example
nohup ./run.sh &
deactivate

# Re-enter
source env/bin/activate
nohup ./run.sh &

deactivate
```
In order to leave your virtual environment, just run deactivate, and then run source env/bin/activate when you are ready to work on your project again.


## nginx setup
```Bash
	yum install nginx
```
Modify /etc/nginx/nginx.conf
```Bash
        location /login {
            proxy_pass   http://127.0.0.1:5000;
        }
````


## Test
- Direct Access
 - Static: http://wsaorigin.nwcdcdn.cn/a.png
 - Dynamic[GET]: http://wsaorigin.nwcdcdn.cn/login
 - Dynamic[POST]: http://wsaorigin.nwcdcdn.cn/login

- Whole Site Accelerate: WSA
 - Static: http://wsatest.nwcdcdn.cn/a.png
 - Dynamic[GET]: http://wsatest.nwcdcdn.cn/login
 - Dynamic[POST]: http://wsatest.nwcdcdn.cn/login
