# Use an official Python runtime as a parent image
FROM python:3.8-slim-buster

# Set environment variables for Jupyter
ENV JUPYTER_ENABLE_LAB=yes
ENV JUPYTER_TOKEN=my_secret_token

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Install Jupyter
RUN pip install jupyterlab

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run Jupyter Notebook
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
