# Use official Python image as base
FROM python:3.x

# Set work directory
WORKDIR /usr/src/app
# Copy project files
COPY . /usr/src/app/

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose port
EXPOSE 8000

# Run migrations and start server
CMD python manage.py migrate && python manage.py runserver 0.0.0.0:8000
