# Use the Python3.7.2 container image
FROM python:3.7.2-stretch

# Set the working directory to /app
WORKDIR /pythonwebsiteflaskauthdatabase

# Copy the current directory contents into the container at /app
ADD . /pythonwebsiteflaskauthdatabase

# Install the dependencies
RUN pip install -r requirements.txt

# Run the command to start uwsgi
CMD ["uwsgi", "pythonwebsiteflaskauthdatabase.ini"]



