#!/bin/sh
pip install -r /root/requirements.txt;
airflow db init  &&
airflow users create --role Admin --username admin --email admin --firstname john --lastname doe --password ${AIRFLOW_ADMIN_PASSWORD} &&
/usr/bin/supervisord;