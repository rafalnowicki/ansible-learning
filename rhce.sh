####

# Ad-hoc Ansible commands
man ansible

# Create a template with all settings descroptions
ansible-config init --disabled > ansible-template.cfg

# Use ping module
ansible appserver1.labnet -m ping
ansible all -i inventory.ini -m ping
ansible all -i inventory.ini --ssh-extra-args="-o StrictHostKeyChecking=no" -m ping
ansible all -i inventory.ini --ssh-extra-args="-o StrictHostKeyChecking=no" --ask-pass -m ping
ansible all -i inventory.ini --ssh-extra-args="-o StrictHostKeyChecking=no" --ask-pass -u me -m ping
ansible all -i inventory.ini --ssh-extra-args="-o StrictHostKeyChecking=no" --ask-pass -u me -b -K -m ping    # -b --become -K --ask-become-pass 

# No inventory
ansible -i 192.0.2.50, -m ping all
ansible -i awx.lot.pl, -u root --ask-pass -m command -a 'systemctl is-enabled sshd' all
ansible -i awx.lot.pl, -u root --ask-pass -m command -a 'systemctl restart sshd' all

# Use command module
ansible ungrouped -m command -a 'touch /root/testfile'
ansible ungrouped -m command -a 'ls -l /root/testfile'
ansible all -i inventory.ini -m command -a 'systemctl is-enabled sshd'

# Ping my own machine
ansible localhost -u $USER --connection=local -m ping
ansible localhost -u $USER --connection=local -m setup

# Print inventory ini fole to yaml
ansible-inventory --list --yaml -i inventory.ini























