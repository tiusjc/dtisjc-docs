##### Dockerfile: salt-minion
##### Imagem    : ubuntu xenial
##### Objetivo  : Cria uma imagem com Ubuntu xenial e instala o salt-minion
##### Maintainer: DTI-SJC tiusjc@gmail.com
##### Build:
```makefile 
$ docker build -t tiusjc/salt-minion:16.04 .
```
##### Executar:
```makefile
$ docker run -d --link salt-master:salt-master -h salt-minion --name salt-minion tiusjc/salt-minion:16.04
```               



