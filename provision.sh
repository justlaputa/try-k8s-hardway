#!/bin/bash
echo 'controller0'
gcloud compute instances create controller0 \
       --boot-disk-size 200GB \
       --can-ip-forward \
       --image ubuntu-1604-xenial-v20160921 \
       --image-project ubuntu-os-cloud \
       --machine-type n1-standard-1 \
       --private-network-ip 10.240.0.10 \
       --subnet kubernetes

echo 'controller1'
gcloud compute instances create controller1 \
       --boot-disk-size 200GB \
       --can-ip-forward \
       --image ubuntu-1604-xenial-v20160921 \
       --image-project ubuntu-os-cloud \
       --machine-type n1-standard-1 \
       --private-network-ip 10.240.0.11 \
       --subnet kubernetes

echo 'controller2'
gcloud compute instances create controller2 \
       --boot-disk-size 200GB \
       --can-ip-forward \
       --image ubuntu-1604-xenial-v20160921 \
       --image-project ubuntu-os-cloud \
       --machine-type n1-standard-1 \
       --private-network-ip 10.240.0.12 \
       --subnet kubernetes

echo 'worker0'
gcloud compute instances create worker0 \
       --boot-disk-size 200GB \
       --can-ip-forward \
       --image ubuntu-1604-xenial-v20160921 \
       --image-project ubuntu-os-cloud \
       --machine-type n1-standard-1 \
       --private-network-ip 10.240.0.20 \
       --subnet kubernetes

echo 'worker1'
gcloud compute instances create worker1 \
       --boot-disk-size 200GB \
       --can-ip-forward \
       --image ubuntu-1604-xenial-v20160921 \
       --image-project ubuntu-os-cloud \
       --machine-type n1-standard-1 \
       --private-network-ip 10.240.0.21 \
       --subnet kubernetes

echo 'worker2'
gcloud compute instances create worker2 \
       --boot-disk-size 200GB \
       --can-ip-forward \
       --image ubuntu-1604-xenial-v20160921 \
       --image-project ubuntu-os-cloud \
       --machine-type n1-standard-1 \
       --private-network-ip 10.240.0.22 \
       --subnet kubernetes
