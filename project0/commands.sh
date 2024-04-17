#!/bin/bash



ansible all --list-hosts -i inventory.ini

ansible-inventory --graph -i inventory.ini
