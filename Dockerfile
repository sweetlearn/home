# Pull base image
FROM python:3.7-slim

# Set environment varibles
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
RUN mkdir /django_project
WORKDIR /django_project

# Install dependencies
COPY requirements.txt /django_project/
RUN pip install -r requirements.txt

# Copy project
COPY . /django_project/
