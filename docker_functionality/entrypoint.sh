#!/bin/bash

# Install Tailwind CSS
python manage.py tailwind install

# Run Django migrations (Just in case any is needed)
python manage.py makemigrations
python manage.py migrate

# Start Tailwind for the beauty of iterio
python manage.py tailwind start

# Start the Iterio app
python manage.py runserver 0.0.0.0:8000
