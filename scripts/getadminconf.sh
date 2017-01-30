#!/bin/bash
echo board | sudo -S cp /etc/kubernetes/admin.conf ./
sudo chown up:up admin.conf
chmod +rw admin.conf
