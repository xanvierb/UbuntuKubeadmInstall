#!/bin/bash
sudo ./default.sh
wget https://raw.githubusercontent.com/xanvierb/UbuntuKubeadmInstall/master/scripts/getadminconf.sh
chmod +x getadminconf.sh
echo "------ $(date) ------" >> initlog.txt
sudo kubeadm init >> initlog.txt
sudo kubectl apply -f https://git.io/weave-kube
kubectl get pods --all-namespaces
