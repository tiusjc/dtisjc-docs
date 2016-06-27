2. DOCKER BUILD

.. code-block:: bash
 
  $ docker build -t tiusjc/salt-master:16.04 .

3. DOCKER RUN

.. code-block:: bash

  $ docker run -d -h salt --name salt-master tiusjc/salt-master:16.04
               
4. DOCKER EXEC

.. code-block:: bash

  $ docker exec -ti salt-master /bin/bash     


