# Use Astronomer's official Airflow base image
FROM quay.io/astronomer/ap-airflow:2.6.2-buster

# Copy Python dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt
