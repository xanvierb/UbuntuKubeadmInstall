#!/bin/bash
echo board | sudo -S cp /etc/kubernetes/admin.conf ./
sudo chown $USER:$USER admin.conf
chmod +rw admin.conf
