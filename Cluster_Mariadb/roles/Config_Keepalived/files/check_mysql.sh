pro=`ps -ef | grep mariadb  | grep -v grep | wc -l`

if [ $pro -eq 0  ];then

   echo `date` "Keepalived -mariadb  is not alived" >> /var/log/messages

   systemctl stop keepalived

fi
