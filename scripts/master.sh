#!/bin/bash
sudo ./default.sh
echo "------ $(date) ------" >> initlog.txt
sudo kubeadm init >> initlog.txt
sudo kubectl apply -f https://git.io/weave-kube
kubectl get pods --all-namespaces
