# airflow-localexecutor

Prod ready airflow image in localexecutor mode.

## Running the app.

Airflow localexecutor mode requires a backend db to function. Thus a postgres source db has been used in app.

All the things needed to get started are in entrypoint directory.

Initially you need to edit postgres.env and set important env.

>>POSTGRES_PASSWORD

Now edit airflow.env and fill in this important env.

>>AIRFLOW_ADMIN_PASSWORD (The password that will be required by admin user to access webserver default username is :admin ,webserver will be exposed on port:5884)

>>AIRFLOW__CORE__SQL_ALCHEMY_CONN (This enable airflow to connect to postgres db and is of form postgresql+psycopg2://postgres:<password>@<host>:5432/airflow)

The password here is same value you set for env POSTGRES_PASSWORD in postgres.env while host value would be service name in our docker-compose(postgresource in example).

After setting the initial values, 
To run the image, head to entrypoint folder and hit:
>> docker-compose up -D

## How to add dags.

Initially dags location default to /root/airflow/dags (/root/airflow is airflow home)

If you mount your local path to this folder in docker-compose the dags must automatically appear.
  
Additionally if you need custom location.
  
set value of AIRFLOW__CORE__DAGS_FOLDER in airflow.env and mount the dags directory at that folder.
  
Feel free to checkout Dockerfile in other folders.
  
Cheers.
  


