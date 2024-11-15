# Use Astronomer's official Airflow base image
FROM quay.io/astronomer/astro-runtime:12.3.0

# Copy Python dependencies
COPY requirements.txt .

# Install Python dependencies
RUN pip install -r requirements.txt
