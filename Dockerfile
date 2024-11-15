# Use Astronomer's official Airflow base image
FROM quay.io/astronomer/astro-runtime:11.7.0

# Copy Python dependencies
COPY requirements.txt .

# Install Python dependencies
RUN pip install -r requirements.txt
