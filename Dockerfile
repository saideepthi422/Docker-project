# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container
COPY . /app

# Install dependencies
RUN pip install flask

# Define environment variable
ENV FLASK_APP=server.py

# Expose port 5000
EXPOSE 5000

# Run the application
CMD ["python", "server.py"]
