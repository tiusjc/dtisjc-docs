2.DOCKER BUILD

.. code-block:: bash

  $ docker build -t tiusjc/nginx .

3.DOCKER RUN ( LINK COM MYSQL)

.. code-block:: bash
 
  $ docker run -h nginx --link php:php -p 8000:80 --name nginx -v /data/nginx/html:/usr/share/nginx/html -d tiusjc/nginx 

.. note::
  
  VOlUMES:  HOST=/data/nginx/html CONTAINER=/usr/share/nginx/html
  
.. code-block:: bash

  $ ls /data/nginx/html/
  index.html  

4.DOCKER EXEC

.. code-block:: bash

  $ docker exec -ti nginx /bin/bash

Testando:

.. code-block:: bash

  root@nginx:/# curl http://127.0.0.1/

.. code-block:: html
  :linenos:

  <!DOCTYPE html>
  <html>
  <head>
  <title>Welcome to nginx!</title>
  <style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
    }
  </style>
  </head>
  <body>
  <h1>Welcome to nginx!</h1>
  <p>If you see this page, the nginx web server is successfully installed and
  working. Further configuration is required.</p>

  <p>For online documentation and support please refer to
  <a href="http://nginx.org/">nginx.org</a>.<br/>
  Commercial support is available at
  <a href="http://nginx.com/">nginx.com</a>.</p>

  <p><em>Thank you for using nginx.</em></p>
  </body>
  </html>


