# Use official Python image as base
FROM ubuntu

# Set work directory
WORKDIR /app
# Copy project files
COPY tweet_project /app
COPY requirements.txt /app

# Install dependencies
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirements.txt && \
    cd tweet_project

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:9000"]
