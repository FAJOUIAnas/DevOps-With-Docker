FROM ubuntu:20.04

WORKDIR /usr/src/app

COPY script.sh .

RUN chmod +x script.sh && apt-get update && apt-get -y install curl

CMD ./script.sh