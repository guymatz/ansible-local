#!/usr/bin/env bash
cd $(dirname $0)
git pull
ansible-playbook -i inventory/local site.yml $*
cd -
