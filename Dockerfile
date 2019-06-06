FROM python:3.5-slim

MAINTAINER ZhaoYong

# RUN apt-get update \
#     && apt-get install -y --no-install-recommends \
#         mysql-client \
#     && rm -rf /var/lib/apt/lists/*

WORKDIR /home/docker

ENV DJANGO_VERSION 2.0.3

RUN  pip install django=="$DJANGO_VERSION" paramiko cryptography==2.4.2 configparser pymysql requests pyDes 

EXPOSE 8000
CMD ["python", "manage.py" ,"runserver","--noreload", "0.0.0.0:8000"]
