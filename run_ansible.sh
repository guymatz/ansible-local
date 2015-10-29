#!/usr/bin/env bash
#cd $(dirname $0)
#git pull --rebase
[ -f /opt/ansible/hacking/env-setup ] && source /opt/ansible/hacking/env-setup > /dev/null 2>&1
#which ansible-playbook
#ansible-playbook -i inventory/aws ipython.yml $*
ansible-playbook -i inventory/local local.yml --connection local $*
cd - > /dev/null 2>&1
