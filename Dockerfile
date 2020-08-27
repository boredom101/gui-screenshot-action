FROM ubuntu:xenial

RUN apt-get update && apt-get install -y xvfb imagemagick x11-apps

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
