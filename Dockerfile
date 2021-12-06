#FROM python:alpine-3.14
#FROM python/3.7/alpine3.14
#MAINTAINER London App Developer Ltd
#
#ENV PYTHONUNBUFFERED 1
#
#COPY ./requirments.txt /requirements.txt
#RUN pip install -r /requirements.txt

#RUN mkdir /app
#WORKDIR /app
#copy ./app /app

FROM python:3.7-alpine
MAINTAINER London App Developer Ltd.

ENV PYTHONUNBUFFERED 1

# Install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# Setup directory structure
RUN mkdir /app
WORKDIR /app
COPY ./app/ /app

RUN adduser -D user
USER user

