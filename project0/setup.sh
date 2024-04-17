#!/bin/bash

sudo echo "192.168.18.174 appserver1.labnet" >> /etc/hosts
sudo echo "192.168.18.175 appserver2.labnet" >> /etc/hosts

# Below needs to be done on vm
ssh -t me@192.168.18.174 'sudo echo "192.168.18.173 ansible-controller.labnet" >> /etc/hosts'
ssh -t me@192.168.18.175 'sudo echo "192.168.18.173 ansible-controller.labnet" >> /etc/hosts'





