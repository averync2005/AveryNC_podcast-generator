FROM ubuntu:latest

RUN apt-get update && apt-get install -y
RUN python 3.10
RUN python3-pip
RUN git

RUN pip3 install PyYAML

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
