# Use the official Python 3.11 image based on Alpine
FROM python:3.11-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the source code into the container
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Run app
CMD ["python", "app.py"]
