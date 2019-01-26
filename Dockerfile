FROM python:3.6-alpine3.8

EXPOSE 8000
WORKDIR /app

RUN cd /app && \
apk update && \
apk upgrade --no-cache && \
apk add --no-cache bash git mariadb-dev libev-dev && \
apk add --no-cache --virtual .build-deps gcc musl-dev && \
git clone https://git.blsoft.hu/barrow099/blpaste.git . && \
pip3 install -r requirements.txt && \
pip3 install bjoern && \
apk del --no-cache .build-deps

VOLUME /app/staticdir
CMD startup.sh