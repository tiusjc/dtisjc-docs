rm source/Dockerfile_MYSQL
rm source/Dockerfile_NGINX
rm source/Dockerfile_PHP
rm source/Dockerfile_PHPMYADMIN

cp dockerfiles/mysql/Dockerfile source/Dockerfile_MYSQL
cp dockerfiles/nginx/Dockerfile source/Dockerfile_NGINX
cp dockerfiles/php/Dockerfile source/Dockerfile_PHP
cp dockerfiles/phpmyadmin/Dockerfile source/Dockerfile_PHPMYADMIN

cp dockerfiles/docker-compose-files/nginx-php-mysql.yml source/

 

