FROM python:3.9-alpine

# Add a non-root user
RUN adduser -D flask

# Set environment variables to avoid buffering and improve security
ENV PYTHONUNBUFFERED=1

# Install system dependencies
RUN apk add --no-cache curl gcc musl-dev libffi-dev openssl-dev python3-dev

# Set the working directory
WORKDIR /app

# Copy requirements.txt and install dependencies
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Change ownership to the flask user
RUN chown -R flask:flask /app

# Switch to the non-root user
USER flask

# Expose the application's port
EXPOSE 5001

# Run the application
CMD ["python", "app.py"]
