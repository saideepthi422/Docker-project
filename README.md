# Docker Project: Simple Web App

## Overview
This project demonstrates how to containerize a simple web application using Docker. It includes a `Dockerfile` for building the image and a `docker-compose.yml` file for managing services.

## Prerequisites
- Install Docker: [Docker Installation Guide](https://docs.docker.com/get-docker/)
- Install Docker Compose: [Docker Compose Guide](https://docs.docker.com/compose/install/)

## Project Structure
```
/docker-project
│── Dockerfile
│── docker-compose.yml
│── app/
│   ├── index.html
│   ├── server.py
│── README.md
```

## Step 1: Create a Simple Web App
### `app/server.py`
```python
from flask import Flask
app = Flask(__name__)

@app.route('/')
def home():
    return "Hello, Docker!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
```

### `app/index.html`
```html
<!DOCTYPE html>
<html>
<head>
    <title>Docker App</title>
</head>
<body>
    <h1>Welcome to My Dockerized App</h1>
</body>
</html>
```

## Step 2: Create a Dockerfile
### `Dockerfile`
```dockerfile
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
```

## Step 3: Use Docker Compose
### `docker-compose.yml`
```yaml
version: '3'
services:
  web:
    build: .
    ports:
      - "5000:5000"
```

## Step 4: Run the Application
### 1. Build the Docker Image
```sh
docker build -t my-docker-app .
```

### 2. Run the Container
```sh
docker run -p 5000:5000 my-docker-app
```

OR using Docker Compose:
```sh
docker-compose up
```

## Step 5: Access the Web App
- Open a browser and go to: `http://localhost:5000`

## Step 6: Pushing to GitHub
1. **Initialize Git:**
   ```sh
   git init
   git add .
   git commit -m "Initial Docker project commit"
   ```
2. **Add Remote Repository & Push:**
   ```sh
   git remote add origin https://github.com/your-username/docker-project.git
   git branch -M main
   git push -u origin main
   ```

## Conclusion
This simple project helps you understand Docker basics. You can expand it by adding databases, load balancers, or more services!

🚀 **Happy Dockering!**


