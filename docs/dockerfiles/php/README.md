2.DOCKER BUILD

.. code-block:: bash

  $ docker build -t tiusjc/php .

3. DOCKER RUN (link com MYSQL)

.. code-block:: bash

  $ docker run -h php --name php --link mysql:mysql --volumes_from:nginx -d tiusjc/php 

4.DOCKER EXEC

.. code-block:: bash

  $ docker exec -ti php /bin/bash

