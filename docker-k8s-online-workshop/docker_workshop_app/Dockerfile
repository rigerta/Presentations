FROM python:3.8

# Expose Streamlit port
EXPOSE 8501

# Set the working directory for the container
WORKDIR /app

# Copy files from local to container
COPY . /app/
COPY requirements.txt ./requirements.txt

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Run Streamlit as soon as the container is initialized
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]