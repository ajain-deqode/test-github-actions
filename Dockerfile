#FROM python:3
FROM amazonlinux:latest
RUN yum -y update
RUN DEBIAN_FRONTEND="noninteractive" yum install -y \
    python3-pip \
    python3 \
    zip


WORKDIR /layers

ADD requirements.txt .
RUN pip3 install -r requirements.txt -t python

Run zip -r python_layer.zip python
VOLUME layers



