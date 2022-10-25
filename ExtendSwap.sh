#!/bin/bash
#How to Extend Swap Space using Swap file in Linux

swapsize=16
echo "close swap memory"
sudo swapoff -a

echo "Create a swap file of size $swapsize GB"
sudo fallocate -l $swapsize /swapfile

#Secure the swap file
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile 

#Add the swap file entry in fstab file
sudo sed -i 's/none/swap/' /etc/fstab


sudo mount -a
