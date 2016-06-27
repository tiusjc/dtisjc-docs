.. code-block:: docker

  FROM nginx

  MAINTAINER DTI-SJC <tiusjc@gmail.com>

  COPY default.conf /etc/nginx/conf.d/default.conf

  COPY index.html /var/www/html/

  EXPOSE 80

  CMD ["nginx", "-g", "daemon off;"]
