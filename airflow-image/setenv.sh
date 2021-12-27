#!/bin/sh
echo "in setenv"
export AIRFLOW__CORE__SQL_ALCHEMY_CONN="postgresql+psycopg2://${S_USERNAME}:${S_PASSWORD}@${S_HOST}:${S_PORT}/airflow"