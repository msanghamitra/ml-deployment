# Use Python 3.9 slim as the base image
FROM python:3.9-slim
# Use Python 3.9 slim as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy only the required files
COPY requirements.txt /app/
COPY app/ /app/app/
COPY models/ /app/models/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application port
EXPOSE 8000

# Command to run the app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
