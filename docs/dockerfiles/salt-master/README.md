##### Dockerfile: salt-master
##### Imagem    : ubuntu xenial
##### Objetivo  : Cria uma imagem com Ubuntu xenial e instala o salt-master
##### Maintainer: DTI-SJC <tiusjc@gmail.com>
##### BUILD:
```makefile 
$ docker build -t tiusjc/salt-master:16.04 .
```
##### RUN:
```makefile
$ docker run -d -h salt --name salt-master tiusjc/salt-master:16.04
```               
##### EXECUTAR:
```makefile
$ docker exec -ti salt-master /bin/bash
```               


