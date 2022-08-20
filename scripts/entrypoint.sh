#!/bin/bash

# set -e

## common
if [ -f ./common.sh ]; then
    . ./common.sh
fi

logger_with_headers $LOGGER_INFO "Starting Developer Portal Configurator..."

## wait for devportal connect - always first!
if [ "${wait_connect}" == "true" ]; then
    exec_ansible_playbook wait_connect.yaml
fi

## update_password
if [ "${changepassword_enabled}" == "true" ]; then
    exec_ansible_playbook update_password.yaml
fi

## config users
if [ "${settings_users_configure}" == "true" ]; then
    exec_ansible_playbook config_users.yaml
fi

## config user groups
if [ "${settings_usergroups_configure}" == "true" ]; then
    exec_ansible_playbook config_usergroups.yaml
fi

## config roles
if [ "${settings_userroles_configure}" == "true" ]; then
    exec_ansible_playbook config_userroles.yaml
fi

logger_with_headers $LOGGER_INFO "Developer Portal Configurator Done !!"
exit 0