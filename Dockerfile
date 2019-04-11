FROM debian

MAINTAINER eduardo@fametec.com.br

RUN apt-get update && apt-get -y upgrade 

RUN apt-get install -y vim net-tools dnsutils unbound

ADD ./server.conf /etc/unbound/unbound.conf.d/

EXPOSE 53/udp

CMD [ "unbound", "-vvv", "-d", "-c", "/etc/unbound/unbound.conf" ]
