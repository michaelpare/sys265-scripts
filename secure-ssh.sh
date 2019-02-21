#!/bin/bash
#SECURE-SSH.SH
#AUTHOR michaelpare
#Creates a new ssh user called sys265
#Adds a public key to that users authorized keys file
#Removes roots ability to ssh in

sudo useradd sys265
sudo mkdir /home/sys265/.ssh
sudo cp linux/public-keys/sys265.pub /home/sys265/.ssh/authorized_keys
sudo chmod 700 /home/sys265/.ssh
sudo chmod 600 /home/sys265/.ssh/authorized_keys
sudo chown -R sys265:sys265 /home/sys265/.ssh
