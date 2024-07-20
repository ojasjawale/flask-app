# Flask Web Application

This is a simple Flask web application built using Python 3.11. It includes a homepage and an API endpoint to demonstrate basic Flask functionality, along with Docker support for containerization.

## Project Structure

my_flask_app/
│
├── static/
│ ├── css/
│ │ └── styles.css
│
├── templates/
│ ├── index.html
│ └── api_response.html
│
├── app.py
├── requirements.txt
├── Dockerfile
└── README.md


- `app.py`: The main Flask application file containing routes and API endpoints.
- `static/css/styles.css`: The CSS stylesheet for styling the web pages.
- `templates/index.html`: The HTML template for the homepage.
- `templates/api_response.html`: The HTML template to display API responses.
- `requirements.txt`: Lists the dependencies for the Flask application.
- `Dockerfile`: Defines the container image for the Flask application.

## Setup and Installation

### Prerequisites

- Python 3.11
- Docker (for containerization)

### Installation

1. **Clone the repository**:

    ```bash
    git clone git@github.com:ojasjawale/flask-app.git
    cd flask-app
    ```
2. **Create Dockerfile**:

   ```bash
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

### Docker Setup

1. **Build the Docker image**:

    ```bash
    docker build -t flask-app:v1 .
    ```

2. **Run the Docker container**:

    ```bash
    docker run --name flask -p 5000:5000 flask-app:v1
    ```

    Access the application at `http://localhost:5000/`.

## Usage

- **Homepage**: Displays a welcome message and basic information about the application.
- **API Endpoint**: Accessible at `/api` and returns a JSON response with sample data.
