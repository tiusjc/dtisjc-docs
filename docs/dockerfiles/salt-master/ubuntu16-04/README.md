##### Dockerfile: salt-master
##### Imagem    : ubuntu xenial
##### Objetivo  : Cria uma imagem com Ubuntu xenial e instala o salt-master
##### Maintainer     : tiusjc@gmail.com
##### Build:
```bash 
###### $ docker build -t tiusjc/salt-master:16.04 .
```
##### Executar:
```bash 
###### $ docker run -d -h salt-master --name salt-master tiusjc/salt-master:16.04
```               



