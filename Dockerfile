# FROM python:latest
# WORKDIR /app
# COPY . . 
# EXPOSE 8000

FROM python:3.10.1-buster
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
RUN pip install --upgrade pip
ADD requirements.txt /code/
RUN pip install -r requirements.txt