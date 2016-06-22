Dockerfile: salt-master
^^^^^^^^^^^^^^^^^^^^^^^
Imagem    : ubuntu xenial
-------------------------
Objetivo  : Cria uma imagem com Ubuntu xenial e instala o salt-master
---------------------------------------------------------------------
Autor     : tiusjc@gmail.com
----------------------------

Build:
------
  $ docker build -t tiusjc/salt-master:16.04 .

Executar:
---------
  $ docker run -d -h salt-master --name salt-master tiusjc/salt-master:16.04
               



