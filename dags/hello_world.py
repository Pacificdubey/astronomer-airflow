from airflow import DAG
from airflow.operators.python_operator import PythonOperator
from datetime import datetime

# Define the default_args dictionary
default_args = {
    'owner': 'airflow',
    'depends_on_past': False,
    'start_date': datetime(2023, 11, 15),
}

# Define the function to be executed
def print_hello_world():
    print("Hello, World!")

# Define the DAG
with DAG('hello_world_dag', default_args=default_args, schedule_interval=None) as dag:

    # Define a PythonOperator task that calls the print_hello_world function
    hello_task = PythonOperator(
        task_id='hello_task',
        python_callable=print_hello_world
    )

    # The DAG will contain only the PythonOperator task
    hello_task

