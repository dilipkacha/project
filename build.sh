#!/bin/bash

echo "Starting build process..."

# Activate virtual environment (optional)
# source venv/bin/activate  # Uncomment if you're using a venv

# Install dependencies
pip install -r requirements.txt

# Run Django migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

echo "Build complete."
