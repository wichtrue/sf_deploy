#!/bin/bash

DATE = `date +%Y%m%d`

eval `ssh-agent`

ssh-add /root/.ssh/id_rsa

ssh root@192.168.1.26 tar czf /tmp/nlu.tgz /opt/nlu_platform/

scp -pr root@192.168.1.26:/tmp/nlu.tgz /tmp/.

ssh root@192.168.1.26 rm -rvf /tmp/nlu.tgz

scp -pr  /tmp/nlu.tgz root@172.30.149.188:/opt/.

rm -rvf /tmp/nlu.tgz

#ssh root@172.30.149.188 mv -v /opt/nlu_platform/ /opt/nlu_platform_$DATE

#ssh root@172.30.149.188 tar xzf /opt/nlu.tgz 

#ssh root@172.30.149.188 rm -rvf /opt/nlu.tgz

#ssh root@172.30.149.188 systemctl restart nlu

#ssh root@172.30.149.188 systemctl restart nginx 

eval `ssh-agent -k`
