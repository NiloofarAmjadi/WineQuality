# Use an official Python runtime as a base image
FROM python:3.10.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir --upgrade pip -r requirements.txt

# Make port 5000 available to the world outside this container
ENV LISTEN_PORT=5000
EXPOSE 5000

# Define environment variable
#ENV PORT = 5000

# Run app.py when the container launches
CMD ["python", "app.py"]
