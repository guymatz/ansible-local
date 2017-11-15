#!/usr/bin/env bash
ANSIBLE_ROOT=~/Code/ansible
cd $ANSIBLE_ROOT
git pull --rebase
source venv/bin/activate
[ -f $ANSIBLE_ROOT/hacking/env-setup ] && source $ANSIBLE_ROOT/hacking/env-setup > /dev/null 2>&1
#which ansible-playbook
#ansible-playbook -i inventory/aws ipython.yml $*
cd -
ansible-playbook -i inventory/local local.yml --connection local $*
cd - > /dev/null 2>&1
