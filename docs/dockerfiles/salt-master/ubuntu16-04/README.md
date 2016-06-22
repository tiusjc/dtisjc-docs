##### Dockerfile: salt-master
##### Imagem    : ubuntu xenial
##### Objetivo  : Cria uma imagem com Ubuntu xenial e instala o salt-master
##### Maintainer     : tiusjc@gmail.com
##### Build:
```html 
$ docker build -t tiusjc/salt-master:16.04 .
```
##### Executar:
```html 
$ docker run -d -h salt-master --name salt-master tiusjc/salt-master:16.04
```               



