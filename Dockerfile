FROM quay.io/aptible/ubuntu:14.04

RUN apt-get update
RUN apt-get -y install socat

ENV LOCAL_PORT 3000
EXPOSE 3000

CMD socat TCP-LISTEN:$LOCAL_PORT,fork TCP:$REMOTE_HOST:$REMOTE_PORT
