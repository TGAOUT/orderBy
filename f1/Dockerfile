FROM registry.cn-shanghai.aliyuncs.com/vuldb/awd_sql:v2


ADD src/ROOT.war /tmp/
RUN apk update && \
    apk add --no-cache openssh tzdata && \ 
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	sed -i "s/skip-networking/#skip-networking/g" /etc/my.cnf.d/mariadb-server.cnf && \
    apk add --no-cache openrc && \
    rc-update add sshd && \
    rc-status && \
    touch /run/openrc/softlevel


RUN rm -rf /usr/local/tomcat/webapps/* && \
	cd webapps && \
	mv /tmp/ROOT.war ./
