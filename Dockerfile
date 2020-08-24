FROM docker:latest

LABEL maintainer="Maikel Mertens"

WORKDIR /app
COPY requirements.txt /app/requirements.txt

RUN apk update && \
    apk add python3 py3-pip && \
    pip3 install --upgrade -r /app/requirements.txt
