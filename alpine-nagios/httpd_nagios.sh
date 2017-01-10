#!/bin/bash

if [ ! -f ${NAGIOS_HOME}/etc/htpasswd.users ] ; then
  htpasswd -c -b -s ${NAGIOS_HOME}/htpasswd.users ${NAGIOSADMIN_USER} ${NAGIOSADMIN_PASS}
  chown -R nagios.nagios ${NAGIOS_HOME}/htpasswd.users
fi

/usr/sbin/nagios -d ${NAGIOS_HOME}/nagios.cfg
httpd -D FOREGROUND 
