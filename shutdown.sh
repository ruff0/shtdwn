#!/bin/bash

## This is to automatically switch off the instance if there is no-process on from any of the users (and Admin isn't logged in)

username=$(cat /root/.bashrc | grep username | sed 's/username=//')

login=$(who | awk '{print $1}' | grep $username | uniq)

if [[ $count == 0 ]] && [[ -z $login ]]; then sudo shutdown now;  fi
