# Use an official Python runtime as a parent image
FROM python:3.8.0-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Set proxy server, replace host:port with values for your servers
ENV http_proxy 10.0.2.2:1080
ENV https_proxy 10.0.2.2:1080

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME World

# Run app.py when the container launches
CMD ["python", "app.py"]

