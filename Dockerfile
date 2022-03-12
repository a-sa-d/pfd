FROM python:3.8-alpine

MAINTAINER Asad Khan

COPY ./app/requirements.txt /app/requirements.txt

WORKDIR /app

RUN apk add --update && apk add bash \
  && pip install --upgrade pip  \
  && pip install -r requirements.txt \
  && rm -rf /var/cache/apk/*

COPY ./app /app

CMD python app.py
