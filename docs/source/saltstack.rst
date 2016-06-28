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
~~~~~~~~~~~~
   
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
~~~~~~~~~~~~

   /etc/salt/minion

.. code-block:: yaml

  master: <ip_salt_servidor>

Reiniciando serviço:

.. code-block:: bash

  $ /etc/init.d/salt-minion restart 
 
Aceitando minions
-----------------

::

Comando: SALT-KEY -h ( https://docs.saltstack.com/en/latest/ref/cli/salt-key.html )
         -a - aceita minion key
         -A - aceitar todas as minions keys
         -r - rejeita minion key
         -R - Rejeitar todas as minions keys
         -d - Deletar minion key
         -D - Deleta todas as minions keys

.. code-block:: bash
  
  $ salt-key
  Accepted Keys:
  D159718
  Denied Keys:
  Unaccepted Keys:
  D159718
  Rejected Keys:

Comandos salt
-------------

.. code-block:: bash

  Exibe a versão do salt resumo
  $ salt-master --version 
  $ salt-minion --version

  Exibe informações completas
  $ salt-master --versions-report
  $ salt-minion --versions-report

  
  



