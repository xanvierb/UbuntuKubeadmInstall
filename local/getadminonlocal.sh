#!/bin/bash
# beware, there are a lot of stuff configured for my specific solution
# like the username, password and machine names.
# 
sshpass -p 'board' ssh up@up01 /home/up/getadminconf.sh
sshpass -p 'board' scp up@up01:/home/up/admin.conf $HOME/.kube/config
