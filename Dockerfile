# Use official Python image as base
FROM python:3.11

# Set work directory
WORKDIR /app
# Copy project files
COPY requirements.txt /app
COPY tweet_project /app
# Install dependencies
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip install -r requirements.txt && \
    cd devops

ENTRYPOINT ["python3"]
CMD ["manage.py", "runserver", "0.0.0.0:9000"]
