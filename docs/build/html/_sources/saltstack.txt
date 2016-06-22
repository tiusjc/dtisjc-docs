=====================================
SaltStack 
=====================================

Documentação: https://docs.saltstack.com/en/latest/ 
---------------------------------------------------

Instalação com `Bootstrap <https://repo.saltstack.com/#bootstrap>`_
-------------------------------------------------------------------
Salt Bootstrap é um shell script que detecta a plataforma de destino e seleciona o melhor método de instalação
( `Plataformas suportadas <https://docs.saltstack.com/en/latest/topics/tutorials/salt_bootstrap.html#supported-operating-systems>`_ )

Usando CURL
^^^^^^^^^^^
 
Instalando a latest development:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash   

  $ curl -o bootstrap_salt.sh -L https://bootstrap.saltstack.com
  $ sudo sh bootstrap_salt.sh git develop

Instalando específico release version:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

  $ curl -o bootstrap_salt.sh -L https://bootstrap.saltstack.com
  $ sudo sh bootstrap_salt.sh git v2015.8.8

Usando WGET
^^^^^^^^^^^

Instalando a última stable version:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

  $ wget -O bootstrap_salt.sh https://bootstrap.saltstack.com
  $ sudo sh bootstrap_salt.sh 

Instalando uma versão específica:
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash  

  $ wget -O bootstrap_salt.sh https://bootstrap.saltstack.com
  $ sudo sh bootstrap_salt.sh -P git v2015.8.8

.. note:: 
  
  No exemplo acima foi adicionado a opção -P para que PIP pacotes sejam instalados 
  se necessário (não é necessário para GIT instalação).  

Exemplo de uso
^^^^^^^^^^^^^^

Instalando salt-master
~~~~~~~~~~~~~~~~~~~~~~

.. code-block:: bash

  $ sudo sh bootstrap_salt.sh -M 

Instalando salt-minion
~~~~~~~~~~~~~~~~~~~~~~
 
.. code-block:: bash
  
  $ sudo sh bootstrap_salt.sh -A <servidor-salt>
  
  onde:
     <servidor-salt> - IP ou DNS name do servidor do salt.


Opções de linha de comando
^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: bash

  $ sh bootstrap-salt.sh -h

.. code-block:: bash

  Usage :  bootstrap-salt.sh [options] <install-type> <install-type-args>

  Installation types:
    - stable (default)
    - stable [version] (ubuntu specific)
    - daily  (ubuntu specific)
    - testing (redhat specific)
    - git

  Examples:
    - bootstrap-salt.sh
    - bootstrap-salt.sh stable
    - bootstrap-salt.sh stable 2014.7
    - bootstrap-salt.sh daily
    - bootstrap-salt.sh testing
    - bootstrap-salt.sh git
    - bootstrap-salt.sh git develop
    - bootstrap-salt.sh git v0.17.0
    - bootstrap-salt.sh git 8c3fadf15ec183e5ce8c63739850d543617e4357

  Options:
  -h  Display this message
  -v  Display script version
  -n  No colours.
  -D  Show debug output.
  -c  Temporary configuration directory
  -g  Salt repository URL. (default: git://github.com/saltstack/salt.git)
  -G  Instead of cloning from git://github.com/saltstack/salt.git, clone from https://github.com/saltstack/salt.git (Usually necessary on systems which have the regular git protocol port blocked, where https usually is not)
  -k  Temporary directory holding the minion keys which will pre-seed
      the master.
  -s  Sleep time used when waiting for daemons to start, restart and when checking
      for the services running. Default: 3
  -M  Also install salt-master
  -S  Also install salt-syndic
  -N  Do not install salt-minion
  -X  Do not start daemons after installation
  -C  Only run the configuration function. This option automatically
      bypasses any installation.
  -P  Allow pip based installations. On some distributions the required salt
      packages or its dependencies are not available as a package for that
      distribution. Using this flag allows the script to use pip as a last
      resort method. NOTE: This only works for functions which actually
      implement pip based installations.
  -F  Allow copied files to overwrite existing(config, init.d, etc)
  -U  If set, fully upgrade the system prior to bootstrapping salt
  -K  If set, keep the temporary files in the temporary directories specified
      with -c and -k.
  -I  If set, allow insecure connections while downloading any files. For
      example, pass '--no-check-certificate' to 'wget' or '--insecure' to 'curl'
  -A  Pass the salt-master DNS name or IP. This will be stored under
      ${BS_SALT_ETC_DIR}/minion.d/99-master-address.conf
  -i  Pass the salt-minion id. This will be stored under
      ${BS_SALT_ETC_DIR}/minion_id
  -L  Install the Apache Libcloud package if possible(required for salt-cloud)
  -p  Extra-package to install while installing salt dependencies. One package
      per -p flag. You're responsible for providing the proper package name.
  -d  Disable check_service functions. Setting this flag disables the
      'install_<distro>_check_services' checks. You can also do this by
      touching /tmp/disable_salt_checks on the target host. Defaults ${BS_FALSE}
  -H  Use the specified http proxy for the installation
  -Z  Enable external software source for newer ZeroMQ(Only available for RHEL/CentOS/Fedora/Ubuntu based distributions)
  -b  Assume that dependencies are already installed and software sources are set up.
      If git is selected, git tree is still checked out as dependency step.

# Configuração
