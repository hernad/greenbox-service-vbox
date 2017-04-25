

# start server:

   export DOCKER_PASSWORD=password_docker_user_on_greenbox_host
   ./start.sh 

# greenbox host:



      [docker@greenbox-1 init.d]$ cat 00_vboxwebsrv.sh 
      #!/bin/bash
       . /etc/green_service_common

       killall vboxwebsrv
       /opt/VirtualBox/vboxwebsrv --host 192.168.168.171 --logfile /var/log/vboxwebsrv.log --background


