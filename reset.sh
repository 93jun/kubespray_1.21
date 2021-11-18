#!/bin/bash
ansible-playbook -u root -b -i inventory/edgecloud/hosts.ini reset.yml
