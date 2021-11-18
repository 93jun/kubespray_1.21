#!/bin/bash
ansible-playbook -i inventory/jserver/hosts.ini --become --become-user=root cluster.yml
