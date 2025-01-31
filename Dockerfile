# Use an official Python runtime as a parent image
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install pywebio

# Make port 5000 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV NAME PywebIOWordle

# Run app.py when the container launches
CMD ["python3", "./app.py"]