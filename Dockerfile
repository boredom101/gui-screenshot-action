FROM ubuntu:xenial

RUN apt-get update && apt-get install -y xvfb imagemagick mesa-utils

COPY mesa.tar.gz /mesa.tar.gz

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
