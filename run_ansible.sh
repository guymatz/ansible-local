#!/usr/bin/env bash
cd $(dirname $0)
git pull
[ -f /opt/ansible/hacking/env-setup ] && source /opt/ansible/hacking/env-setup > /dev/null 2>&1
#ansible-playbook -i inventory/aws ipython.yml $*
ansible-playbook -i inventory/local local.yml $*
cd - > /dev/null 2>&1
