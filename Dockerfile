FROM ubuntu:xenial

RUN apt-get update && apt-get install -y xvfb imagemagick 

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

RUN apt-get update && apt-get install -y python3 python3-tk
