rm source/Dockerfile_MYSQL
rm source/Dockerfile_NGINX
rm source/Dockerfile_PHP
rm source/Dockerfile_PHPMYADMIN
rm source/Dockerfile_SALTMASTER
rm source/Dockerfile_SALTMINION

cp dockerfiles/mysql/Dockerfile source/Dockerfile_MYSQL
cp dockerfiles/nginx/Dockerfile source/Dockerfile_NGINX
cp dockerfiles/php/Dockerfile source/Dockerfile_PHP
cp dockerfiles/phpmyadmin/Dockerfile source/Dockerfile_PHPMYADMIN
cp dockerfiles/salt-master/Dockerfile source/Dockerfile_SALTMASTER
cp dockerfiles/salt-minion/Dockerfile source/Dockerfile_SALTMINION


cp dockerfiles/docker-compose-files/nginx-php-mysql.yml source/

 

