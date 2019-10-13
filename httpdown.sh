#!/bin/bash
/etc/init.d/httpd status
if [[ $? == 3 ]]; then
   echo "Httpd is down `date`" | mail peternorthguy@gmail.com
   exit 1
fi
exit 0
