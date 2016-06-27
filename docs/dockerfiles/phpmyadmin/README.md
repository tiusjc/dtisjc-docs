####2.DOCKER BUILD

.. code-block:: bash

```bash
  $ docker build -t tiusjc/phpmyadmin .
```

####3.DOCKER RUN 

.. code-block:: bash

```bash
  $ docker run --name phpmyadmin -h phpmyadmin -e PMA_USER=root -e PMA_PASSWORD=******* -e PMA_HOST=mysql -d tiusjc/phpmyadmin
```

####4.DOCKER EXEC

.. code-block:: bash

```bash
  $ docker exec -ti phpmyadmin /bin/bash
```

