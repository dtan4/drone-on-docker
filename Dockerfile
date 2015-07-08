FROM ubuntu:14.04
MAINTAINER Daisuke Fujita <dtanshi45@gmail.com> (@dtan4)

RUN apt-get update && \
    apt-get install -y docker.io wget && \
    rm -rf /var/lib/apt/lists/*

RUN wget -O /tmp/drone.deb downloads.drone.io/master/drone.deb && \
    cd /tmp && \
    dpkg -i drone.deb && \
    rm drone.deb

WORKDIR /app

CMD ["droned"]
