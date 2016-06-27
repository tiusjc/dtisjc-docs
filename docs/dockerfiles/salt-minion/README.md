
2. DOCKER BUILD

.. code-block:: bash
 
  $ docker build -t tiusjc/salt-minion:16.04 .

3. DOCKER RUN:

.. code-block:: bash

  $ docker run -d --link salt-master:salt-master -h salt-minion --name salt-minion tiusjc/salt-minion:16.04
               



