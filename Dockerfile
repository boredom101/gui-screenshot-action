FROM ubuntu:xenial

RUN apt-get update && apt-get install -y software-properties-common
RUN sudo add-apt-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial main" && apt-get update && apt-get install -y xvfb imagemagick mesa-utils llvm-10-dev

COPY mesa.tar.gz /mesa.tar.gz

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
