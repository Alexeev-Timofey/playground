#!/usr/bin/env bash

../django/NaN_backend/manage.py runserver &> /dev/null &
sleep 1
if [[ $(curl 'http://localhost:8000/hello') == Hello ]]; then echo OK; else echo FAIL; fi
kill %1
