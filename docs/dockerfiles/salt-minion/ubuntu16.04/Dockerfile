FROM ubuntu:xenial

MAINTAINER Francismar Nascimento da Silva <francislibra@gmail.com>

RUN dpkg-reconfigure --frontend noninteractive tzdata

RUN apt-get update -q

RUN apt-get install apt-utils iputils-ping -qy curl wget -qy

RUN wget -qO - "https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub" | apt-key add -

RUN echo "deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main" >> /etc/apt/sources.list.d/saltstack.list

RUN apt-get update -q && apt-get install -qy python-apt salt-minion

RUN echo "master: 172.21.216.3" >> /etc/salt/minion

VOLUME ['/etc/salt/minion.d', ]

ADD run.sh /usr/local/bin/run.sh

RUN chmod +x /usr/local/bin/run.sh

RUN rm -rf /var/cache/apk/*

CMD "/usr/local/bin/run.sh"

EXPOSE 80 443
