# Use the official Python 3.11 image based on Alpine
FROM python:3.11-alphine

# Set the working directory in the container
WORKDIR /app

# Copy the source code into the container
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Run the application
CMD ["python", "app.py"]

