FROM python:3.10-slim

WORKDIR /app

# Install dependencies using apt-get
RUN apt-get update && apt-get install -y python3-tk libnss3 libx11-6 libxext6 libxrender1 libffi-dev && rm -rf /var/lib/apt/lists/*

COPY . .

EXPOSE 5000

CMD ["python", "rps.py"]
