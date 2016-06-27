==================================
Docker - Instalação e Configuração
==================================

Instalação
----------

.. code-block:: bash
  
  $ curl -sSL https://get.docker.com/ | sh 
  
  $ docker -v 
  Docker version 1.11.1, build 5604cbe
  
para outras opções: `get.docker.com <https://get.docker.com/>`_  ou https://docs.docker.com/installation/
  
Configuração
------------

+-------------------------+-----------------------+
| Distriuição             | Configuração          |
+=========================+=======================+
| Ubuntu/Debian/Gentoo    | /etc/default/docker   |
+-------------------------+-----------------------+
| Opensuse/CentOS/Red Hat | /etc/sysconfig/docker |          
+-------------------------+-----------------------+

1. Mudando a localização diretório raiz do Docker (Default -> /var/lib/docker)

  a. Técnica 1 ( no Debian /etc/default/docker )
  
  .. code-block:: docker

    DOCKER_OPTS="-g /mnt/bigdisk/docker"

  .. code-block:: bash

    $ systemctl stop docker
    $ systemctl start docker

  b. Técnica 2
  
  .. code-block:: bash
 
    $ docker daemon -g /mnt/bigdisk/docker

Dockerfiles
-----------

.. image:: https://vincent.composieux.fr/assets/img/blog/containers-schema.jpg

Nginx ( http://salt:8000 )
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1.DOCKERFILE
 
.. include:: Dockerfile_NGINX

2.DOCKER BUILD

.. code-block:: bash

  $ docker build -t tiusjc/nginx .

3.DOCKER RUN ( LINK COM MYSQL)

.. code-block:: bash
 
  $ docker run -h nginx --link php:php -p 8000:80 --name nginx -v /data/nginx/html:/usr/share/nginx/html -d tiusjc/nginx 

.. note::
  
  VOlUMES:  HOST=/data/nginx/html CONTAINER=/usr/share/nginx/html
  
.. code-block:: bash

  $ ls /data/nginx/html/
  index.html  

4.DOCKER EXEC

.. code-block:: bash

  $ docker exec -ti nginx /bin/bash

Testando:

.. code-block:: bash

  root@nginx:/# curl http://127.0.0.1/

.. code-block:: html
  :linenos:

  <!DOCTYPE html>
  <html>
  <head>
  <title>Welcome to nginx!</title>
  <style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
  </style>
  </head>
  <body>
  <h1>Welcome to nginx!</h1>
  <p>If you see this page, the nginx web server is successfully installed and
  working. Further configuration is required.</p>

  <p>For online documentation and support please refer to
  <a href="http://nginx.org/">nginx.org</a>.<br/>
  Commercial support is available at
  <a href="http://nginx.com/">nginx.com</a>.</p>

  <p><em>Thank you for using nginx.</em></p>
  </body>
  </html>

PHP ( http://salt:8000/phpinfo.php )
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1.DOCKERFILE

.. include:: Dockerfile_PHP

2.DOCKER BUILD

.. code-block:: bash
  
  $ docker build -t tiusjc/php .

3. DOCKER RUN (link com MYSQL)

.. code-block:: bash

  $ docker run -h php --name php --link mysql:mysql --volumes_from:nginx -d tiusjc/php 

4.DOCKER EXEC

.. code-block:: bash

  $ docker exec -ti php /bin/bash

MYSQL ( http://salt:8000/mysql.php )
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1.DOCKERFILE

.. include:: Dockerfile_MYSQL

2.DOCKER BUILD

.. code-block:: bash

  $ docker build -t tiusjc/mysql .

3.DOCKER RUN 

.. code-block:: bash

  $ docker run --name mysql -h mysql -e MYSQL_ROOT_PASSWORD=******* -d tiusjc/mysql

4.DOCKER EXEC

.. code-block:: bash

  $ docker exec -ti mysql /bin/bash

Testando:

.. code-block:: bash
  
  root@mysql:/# mysql -uroot -p
  Enter password: 
  Welcome to the MySQL monitor.  Commands end with ; or \g.
  Your MySQL connection id is 3
  Server version: 5.7.12 MySQL Community Server (GPL)

  Copyright (c) 2000, 2016, Oracle and/or its affiliates. All rights reserved.

  Oracle is a registered trademark of Oracle Corporation and/or its
  affiliates. Other names may be trademarks of their respective
  owners.

  Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

  mysql> 

PHPMYADMIN ( http://salt:8080 )
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1.DOCKERFILE

.. include:: Dockerfile_PHPMYADMIN

2.DOCKER BUILD

.. code-block:: bash

  $ docker build -t tiusjc/phpmyadmin .

3.DOCKER RUN 

.. code-block:: bash

  $ docker run --name phpmyadmin -h phpmyadmin -e PMA_USER=root -e PMA_PASSWORD=******* -e PMA_HOST=mysql -d tiusjc/phpmyadmin

4.DOCKER EXEC

.. code-block:: bash

  $ docker exec -ti phpmyadmin /bin/bash

Juntando tudo
-------------

1.DOCKERCOMPOSE

.. include:: nginx-php-mysql.yml

2.EXECUTANDO

.. code-block:: bash

  $ docker-compose -f nginx-php-mysql.yml -d
