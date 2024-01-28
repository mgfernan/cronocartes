# Use an official Python runtime as a parent image
FROM debian:bullseye-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

ENV PATH="/usr/local/bin/ScribusGenerator-python3:$PATH"

# Install any needed packages specified in requirements.txt
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    scribus curl unzip ca-certificates && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir ~/bin && \
    curl -L https://github.com/berteh/ScribusGenerator/archive/python3.zip -o /tmp/scribus_generator.zip && \
    unzip /tmp/scribus_generator.zip -d /usr/local/bin
