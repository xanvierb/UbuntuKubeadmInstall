#!/bin/bash
# beware, there are a lot of stuff configured for my specific solution
# like the username, password and machine names.
#
echo "Type the username that you want to check use (like up), followed by [ENTER]:" 
read un
echo "Type the machinename of the master"
read mn
echo $un@$mn will be used!
read abc
sshpass -p 'board' ssh $un@$mn /home/up/getadminconf.sh
sshpass -p 'board' scp $un@$mn:/home/up/admin.conf $HOME/.kube/config
