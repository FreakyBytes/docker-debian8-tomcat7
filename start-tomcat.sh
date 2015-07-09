#!/bin/sh

if [ -n "${JAVA_OPTS}" ];
then
	echo "Adding JAVA options"
	echo "JAVA_OPTS=\"\${JAVA_OPTS} ${JAVA_OPTS} \"" >> /etc/default/tomcat7
fi

service tomcat7 restart
# Override exit
echo 'alias exit="echo Are you sure? Use Ctrl + p, Ctrl + q to detach or ctrl + d to exit"' > ~/.bashrc
# keep container running
bash  
