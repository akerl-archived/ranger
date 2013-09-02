#!/usr/bin/env bash

SCRIPT_PATH=$( builtin cd $(dirname $0) ; pwd -P )
export ANSIBLE_HOSTS="$SCRIPT_PATH/kickstart/hosts"
export ANSIBLE_CONFIG="$SCRIPT_PATH/kickstart/config"

cd "$SCRIPT_PATH/kickstart"

hosts="$1"
args="${@:2}"

ansible-playbook $args -l $hosts playbook.yml

