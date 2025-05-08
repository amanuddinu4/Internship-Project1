# Use an official Python image as the base
FROM python:alpine

# Set the working directory in the container
WORKDIR /app

# Install Tkinter dependencies (using apk instead of apt-get)
RUN apk add --no-cache python3-tk libnss3 libx11 libxext libxrender libffi-dev

# Copy the project files into the container
COPY . .

# Expose the required port (optional for GUI apps)
EXPOSE 5000

# Command to run the application
CMD ["python", "rps.py"]
