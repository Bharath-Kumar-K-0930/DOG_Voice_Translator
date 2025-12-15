# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Install system dependencies
# ffmpeg: for audio conversion
# libsndfile1: for librosa audio loading
RUN apt-get update && apt-get install -y \
    ffmpeg \
    libsndfile1 \
    && rm -rf /var/lib/apt/lists/*

# Copy the requirements file into the container
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Expose the port the app runs on
# Render will overwrite this with the PORT env var, but good for documentation
EXPOSE 5003

# Define environment variable
ENV FLASK_ENV=production
ENV TF_CPP_MIN_LOG_LEVEL=2

# Run gunicorn when the container launches
# 0.0.0.0:$PORT tells gunicorn to bind to all interfaces on the port specified by Render
CMD gunicorn --bind 0.0.0.0:$PORT app:app
