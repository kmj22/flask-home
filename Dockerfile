FROM crawforc3/raspberrypi-uwsgi-nginx-flask
#FROM tiangolo/uwsgi-nginx-flask:python3.6-alpine3.7
#RUN apk --update add bash nano

ENV STATIC_URL /static
ENV STATIC_PATH /var/www/app/static

COPY /home/kevyn/code/MLPackageTest /mltest
RUN pip install -e /mltest

COPY ./requirements.txt /var/www/requirements.txt
RUN pip install -r /var/www/requirements.txt