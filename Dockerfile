FROM python:3.6-alpine3.8

EXPOSE 80
WORKDIR /app

RUN apk update && \
apk upgrade --no-cache && \
apk add --no-cache git bash mariadb-dev apache2 && \
git clone https://git.blsoft.hu/barrow099/blpaste.git .

COPY ./mysql.cnf ./
COPY ./settings.py ./blpaste/settings.py
COPY ./httpd.conf /etc/apache2/httpd.conf
RUN pip install -r requirements.txt