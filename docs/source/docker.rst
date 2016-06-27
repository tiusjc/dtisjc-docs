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

1. DOCKERFILE
 
.. include:: ../dockerfiles/nginx/Dockerfile

.. include:: ../dockerfiles/nginx/README.md

PHP ( http://salt:8000/phpinfo.php )
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. DOCKERFILE

.. include:: ../dockerfiles/php/Dockerfile

.. include:: ../dockerfiles/php/README.md

MYSQL ( http://salt:8000/mysql.php )
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1.DOCKERFILE

.. include:: ../dockerfiles/mysql/Dockerfile

.. include:: ../dockerfiles/mysql/README.md


PHPMYADMIN ( http://salt:8080 )
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. DOCKERFILE

.. include:: ../dockerfiles/phpmyadmin/Dockerfile

.. include:: ../dockerfiles/phpmyadmin/README.md

Juntando tudo
-------------

1. DOCKER COMPOSE

.. include:: ../dockerfiles/docker-compose-files/nginx-php-mysql.yml

.. include:: ../dockerfiles/docker-compose-files/README.md

SALT MASTER
^^^^^^^^^^^

1. DOCKERFILE

.. include:: ../dockerfiles/salt-master/Dockerfile

.. include:: ../dockerfiles/salt-master/README.md


SALT MINION
^^^^^^^^^^^

1. DOCKERFILE

.. include:: ../dockerfiles/salt-minion/Dockerfile

.. include:: ../dockerfiles/salt-minion/README.md
