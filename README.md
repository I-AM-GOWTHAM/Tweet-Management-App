# Tweet-Management-App-using-Django-with-Docker-Integration
This is tweet posting application in which the user can make crud operations with their own tweets if they have their account in the system

Tweet Management App using Django with Docker Integration
A full-stack web application that allows users to create, edit, and delete tweets containing text and images. The application features user authentication, utilizes Docker for containerization, and is built using the Django framework.

Table of Contents
Features
Prerequisites
Installation
Clone the Repository
Setup Virtual Environment
Install Dependencies
Database Migrations
Create Superuser
Running the Server
Project Structure
Docker Integration
Usage
Screenshots
Contributing
License
Contact
Features
User Authentication: Register, login, and logout functionality.
Tweet Management: Create, read, update, and delete tweets with text and images.
Responsive Design: Built with Bootstrap for a responsive and modern UI.
Media Handling: Efficient handling and storage of media files.
Dockerized Setup: Easy deployment and scalability using Docker.
Admin Panel: Django's built-in admin interface for managing users and tweets.
Prerequisites
Ensure you have the following installed on your system:

Python 3.x
pip
virtualenv
Docker (for containerization)
Installation
Follow these steps to set up and run the project locally.

Clone the Repository
bash
``` 
git clone https://github.com/i-am-gowtham/tweet-management-app-using-django-with-docker-integration.git
cd tweet-management-app
Setup Virtual Environment
Create and activate a virtual environment to isolate project dependencies.
```
On Windows:

``` bash
python -m venv .venv
.venv\Scripts\activate
On macOS/Linux:
```
``` bash
python3 -m venv .venv
source .venv/bin/activate
Install Dependencies
Upgrade pip and install all required Python packages.
```
```bash
pip install --upgrade pip
pip install -r requirements.txt
Database Migrations
Apply database migrations to set up the SQLite database.
```
``` bash
python manage.py makemigrations
python manage.py migrate
Create Superuser
Create a superuser account to access the Django admin panel.
```
```bash
python manage.py createsuperuser
Provide a username, email, and password when prompted.
```
Running the Server
Start the development server:

``` bash
python manage.py runserver
Access the application at http://127.0.0.1:8000/.
```
Project Structure
arduino
```
tweet-management-app/
├── tweet_project/
│   ├── settings.py
│   ├── urls.py
│   ├── wsgi.py
│   └── ...
├── tweet_app/
│   ├── migrations/
│   ├── templates/
│   │   ├── tweet_list.html
│   │   ├── tweet_form.html
│   │   └── tweet_confirm_delete.html
│   ├── forms.py
│   ├── models.py
│   ├── views.py
│   └── urls.py
├── templates/
│   ├── layout.html
│   └── registration/
│       ├── login.html
│       ├── logout.html
│       └── register.html
├── media/
│   └── photos/
├── static/
│   └── ...
├── requirements.txt
└── manage.py
```
# Docker Integration
Containerize the application using Docker for easy deployment.

Prerequisites
Ensure Docker is installed and running on your system.
Docker Setup
Create a Dockerfile in the root directory:

``` Dockerfile

# Dockerfile

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
```
Create a .dockerignore file to exclude unnecessary files:
markdown
  # .dockerignore
  __pycache__/
  *.pyc
  *.pyo
  *.pyd
  *.swp
  *.swo
  .env
  .venv/
  media/

# Building and Running Docker Container
Build the Docker image:

``` bash
docker build -t tweet-app .
Run the Docker container:
```
``` bash
docker run -d -p 8000:8000 tweet-app
Access the application at http://localhost:8000/.
```
Usage
Accessing the Application
Homepage: Lists all tweets with options to create, edit, or delete (if authenticated).
Register: Create a new user account.
Login: Access your account to manage tweets.
Admin Panel: Accessible at ```http://localhost:8000/admin/``` for superusers.
Creating a Tweet
Log in to your account.
Click on "Create a Tweet".
Fill in the text and optionally upload a photo.
Submit to post your tweet.
Editing a Tweet
Navigate to the tweet you wish to edit.
Click on "Edit".
Update the content and submit.
Deleting a Tweet
Navigate to the tweet you wish to delete.
Click on "Delete".
Confirm the deletion.
Screenshots
Add relevant screenshots of your application here to showcase the UI and functionality.

Contributing
Contributions are welcome! Please follow these steps:

Fork the repository.
Create a new branch for your feature: git checkout -b feature-name.
Commit your changes: git commit -m 'Add some feature'.
Push to the branch: git push origin feature-name.
Open a pull request.


Contact
M Gowtham Kumar

Email: mandalagowtham2003@gmail.com
LinkedIn: https://www.linkedin.com/in/mandala-gowtham-kumar-393669217/
GitHub: i-am-gowtham
