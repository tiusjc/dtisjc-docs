FROM ubuntu:14.04

MAINTAINER DTI-SJC <tiusjc@gmail.com>

RUN apt-get update && apt-get install wget -y

RUN wget -O - https://repo.saltstack.com/apt/ubuntu/14.04/amd64/2015.8/SALTSTACK-GPG-KEY.pub | sudo apt-key add -

RUN echo deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/archive/2015.8.10 trusty main >> /etc/apt/sources.list.d/saltstack.list

RUN apt-get update 

RUN echo 172.21.216.3 salt

RUN apt-get install salt-minion -y

RUN apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/

EXPOSE 80

CMD salt-minion -l debug
