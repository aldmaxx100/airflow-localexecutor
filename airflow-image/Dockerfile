from python:3.8-slim-buster
WORKDIR /root/airflow
ENV AIRFLOW_HOME=/root/airflow
ENV AIRFLOW__CORE__LOAD_EXAMPLES=False
ENV AIRFLOW__CORE__EXECUTOR=LocalExecutor
RUN pip install apache-airflow==2.2.2 --constraint https://raw.githubusercontent.com/apache/airflow/constraints-2.2.2/constraints-3.8.txt
RUN apt-get update && apt-get install -y wget unzip supervisor
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN mkdir /root/Downloads
COPY requirements.txt /root
RUN pip install -r /root/requirements.txt
CMD ["/bin/bash", "/root/start.sh"]