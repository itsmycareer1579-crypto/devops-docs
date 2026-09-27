FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .

RUN pip install - no-cache-dir -r requirements.txt

# Copy the application code
COPY . .

# Define the command to run the application
CMD ["python", "app.py"]
