# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that Flask will run on
EXPOSE 8080

# Set environment variables for Flask (optional, if you want to run in production mode)
ENV FLASK_APP=tviews.py
ENV FLASK_ENV=production

# Command to run your Python script
CMD ["python", "tviews.py", "--mode", "auto", "--channel", "botio_devs", "--post", "331"]
