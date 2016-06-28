=====================================
SaltStack 
=====================================

Documentação: https://docs.saltstack.com/en/latest/ 
---------------------------------------------------

Instalação com `Bootstrap <https://repo.saltstack.com/#bootstrap>`_
-------------------------------------------------------------------
Salt Bootstrap é um shell script que detecta a plataforma de destino e seleciona o melhor método de instalação
( `Plataformas suportadas <https://docs.saltstack.com/en/latest/topics/tutorials/salt_bootstrap.html#supported-operating-systems>`_ )


Instalação
----------

1. No salt master
~~~~~~~~~~~~~~~~~

.. code-block:: bash

  $ sudo sh bootstrap_salt.sh -M 

Docker: http://dtisjc-docs.readthedocs.io/en/latest/docker.html#salt-master 

Github: https://github.com/tiusjc/dtisjc-docs/tree/master/docs/dockerfiles/salt-master

2. No salt-minion 
~~~~~~~~~~~~~~~~~
 
.. code-block:: bash
  
  $ sudo sh bootstrap_salt.sh -A <servidor-salt>
  
  onde:
     <servidor-salt> - IP ou DNS name do servidor do salt.

Docker: http://dtisjc-docs.readthedocs.io/en/latest/docker.html#salt-minion 

Github: https://github.com/tiusjc/dtisjc-docs/tree/master/docs/dockerfiles/salt-minion

Configuração
------------

1. No master
   
   /etc/salt/master   

.. code-block:: yaml
  
  file_roots:
    base:
      - /home/vol1/salt/base

  pillar_roots:
    base:
      - /home/vol1/salt/pillar

Reiniciando serviço:

.. code-block:: bash

  $ /etc/init.d/salt-minion restart 

2. No minion

   /etc/salt/minion

.. code-block:: yaml

  master: <ip_salt_servidor>

Reiniciando serviço:

.. code-block:: bash

  $ /etc/init.d/salt-minion restart 
 





