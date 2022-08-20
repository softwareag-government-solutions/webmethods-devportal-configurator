#!/bin/bash

# set -e

## common
if [ -f ./common.sh ]; then
    . ./common.sh
fi

logger_with_headers $LOGGER_INFO "Starting Developer Portal Configurator..."

## wait for devportal connect - always first!
if [ "${devportal_wait_connect}" == "true" ]; then
    exec_ansible_playbook wait_connect.yaml
fi

## update_password
if [ "${devportal_changepassword_enabled}" == "true" ]; then
    exec_ansible_playbook update_password.yaml
fi

logger_with_headers $LOGGER_INFO "Developer Portal Configurator Done !!"
exit 0