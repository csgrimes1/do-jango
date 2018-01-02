FROM python:3.7-rc-stretch
RUN apt-get update \
  && apt-get install -y netcat
COPY requirements.txt /usr/app/
RUN pip install -r /usr/app/requirements.txt
