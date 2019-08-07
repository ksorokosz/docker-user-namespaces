FROM debian:stretch-slim

RUN groupadd -g 1000 myuser && useradd -ms /bin/bash -g 1000 -u 1000 myuser
USER myuser
WORKDIR /home/myuser
