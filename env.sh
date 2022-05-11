#!/bin/bash
for CONTAINER in $(docker ps -q -f name=awd_sql)
do
  docker exec -it $CONTAINER  /etc/init.d/sshd restart
  docker exec -it $CONTAINER  /etc/init.d/mariadb restart
  docker exec -it $CONTAINER  chmod 777 /usr/local/tomcat/webapps/admin
done

