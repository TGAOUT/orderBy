#!/bin/bash
for CONTAINER in $(docker ps -q -f name=orderby_f1_1)
do
  docker exec -it $CONTAINER  /etc/init.d/mariadb restart
  docker exec -it $CONTAINER  chmod 777 /usr/local/tomcat/webapps/ROOT
done

