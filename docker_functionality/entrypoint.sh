#!/bin/bash


#install npm and node for tailwind
apt-get update && apt-get install -y nodejs npm
npm install


# Install Tailwind CSS
python manage.py tailwind install

# Run Django migrations (Just in case any is needed)
python manage.py makemigrations
python manage.py migrate


# Start Tailwind for the beauty of iterio
#python manage.py tailwind start

# Start the Iterio app
#python manage.py runserver 0.0.0.0:8000

python3 manage.py tailwind start && python3 manage.py runserver 0.0.0.0:8000