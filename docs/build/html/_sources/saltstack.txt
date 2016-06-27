=====================================
SaltStack 
=====================================

Documentação: https://docs.saltstack.com/en/latest/ 
---------------------------------------------------

Instalação com `Bootstrap <https://repo.saltstack.com/#bootstrap>`_
-------------------------------------------------------------------
Salt Bootstrap é um shell script que detecta a plataforma de destino e seleciona o melhor método de instalação
( `Plataformas suportadas <https://docs.saltstack.com/en/latest/topics/tutorials/salt_bootstrap.html#supported-operating-systems>`_ )

1. Instalando salt-master ( http://dtisjc-docs.readthedocs.io/en/latest/docker.html#salt-master )
~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

  $ sudo sh bootstrap_salt.sh -M 

Github https://github.com/tiusjc/dtisjc-docs/tree/master/docs/dockerfiles/salt-master

2. Instalando salt-minion ( http://dtisjc-docs.readthedocs.io/en/latest/docker.html#salt-minion )
~~~~~~~~~~~~~~~~~~~~~~~~~

 
.. code-block:: bash
  
  $ sudo sh bootstrap_salt.sh -A <servidor-salt>
  
  onde:
     <servidor-salt> - IP ou DNS name do servidor do salt.

Github https://github.com/tiusjc/dtisjc-docs/tree/master/docs/dockerfiles/salt-minion

# Configuração
