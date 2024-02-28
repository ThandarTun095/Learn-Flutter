# Use an official base image
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y git curl unzip

# Download and install Flutter SDK
RUN git clone https://github.com/flutter/flutter.git /flutter
ENV PATH "$PATH:/flutter/bin"

# Set up Flutter environment variables
ENV FLUTTER_ROOT="/flutter"
ENV PATH="$PATH:$FLUTTER_ROOT/bin"

# Set up working directory
WORKDIR /app

# Optionally, you can copy your Flutter project into the container
# COPY . .

# Define default command to run when the container starts
CMD ["bash"]
