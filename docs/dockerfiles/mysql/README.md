2. DOCKER BUILD

.. code-block:: bash

  $ docker build -t tiusjc/mysql .

3. DOCKER RUN 

.. code-block:: bash

  $ docker run --name mysql -h mysql -e MYSQL_ROOT_PASSWORD=******* -d tiusjc/mysql

4. DOCKER EXEC

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
