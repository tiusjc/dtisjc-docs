#!/bin/bash

if [ $# -lt 2 ]
then
        echo "Uso: $0 faltando parâmetros"
        exit
fi

case "$1" in

1) mv dockerfiles/nginx/Dockerfile dockerfiles/nginx/Dockerfile2
   sed 's/.\{2\}//;/code-block/d' dockerfiles/nginx/Dockerfile2 > dockerfiles/nginx/Dockerfile

   mv dockerfiles/php/Dockerfile dockerfiles/php/Dockerfile2
   sed 's/.\{2\}//;/code-block/d' dockerfiles/php/Dockerfile2 > dockerfiles/php/Dockerfile

   mv dockerfiles/mysql/Dockerfile dockerfiles/mysql/Dockerfile2
   sed 's/.\{2\}//;/code-block/d' dockerfiles/mysql/Dockerfile2 > dockerfiles/mysql/Dockerfile

   mv dockerfiles/phpmyadmin/Dockerfile dockerfiles/phpmyadmin/Dockerfile2
   sed 's/.\{2\}//;/code-block/d' dockerfiles/phpmyadmin/Dockerfile2 > dockerfiles/phpmyadmin/Dockerfile
;;

2) rm dockerfiles/nginx/Dockerfile
   mv dockerfiles/nginx/Dockerfile2 dockerfiles/nginx/Dockerfile
   rm dockerfiles/php/Dockerfile
   mv dockerfiles/php/Dockerfile2 dockerfiles/php/Dockerfile
   rm dockerfiles/mysql/Dockerfile
   mv dockerfiles/mysql/Dockerfile2 dockerfiles/mysql/Dockerfile 
   rm dockerfiles/phpmyadmin/Dockerfile
   mv dockerfiles/phpmyadmin/Dockerfile2 dockerfiles/phpmyadmin/Dockerfile
;;
esac

make html

cd ..

git add .

git commit -m "$2"

git push origin master

cd docs
