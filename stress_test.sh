#!/bin/bash

ab -c 10 -n 10000 http://52.83.203.177/login
ab -c 10 -n 10000 -p a.txt  http://52.83.203.177/login
