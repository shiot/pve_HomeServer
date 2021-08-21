#!/bin/bash

source "$script_path/bin/variables.sh"
source "$script_path/handler/global_functions.sh"
source "$shiot_configPath/$shiot_configFile"
source "$script_path/language/$var_language.sh"

ctID=$1
ctRootpw=$2
ctIP=$(lxc-info $ctID -iH | grep $networkIP)
containername=$(pct list | grep $ctID | awk '{print $3}')

# Load container language file if not exist load english language
if [ -f "$script_path/lxc/$containername/language/$var_language.sh" ]; then
  source "$script_path/lxc/$containername/language/$var_language.sh"
else
  source "$script_path/lxc/$containername/language/en.sh"
fi

pct exec $ctID -- bash -ci "apt-get install -y docker.io docker-compose > /dev/null 2>&1"
pct exec $ctID -- bash -ci "systemctl start docker && systemctl enable docker > /dev/null 2>&1"
pct exec $ctID -- bash -ci "mkdir -p /root/npm/ > /dev/null 2>&1"
pct push $ctID "$script_path/lxc/ReverseProxy/docker-compose.yml" "/root/npm/docker-compose.yml"
pct exec $ctID -- bash -ci "sed -i 's#ROOTPASSWORDTOCHANGE#'"$ctRootpw"'#g' /root/npm/docker-compose.yml"
pct exec $ctID -- bash -ci "cd /root/npm && docker-compose up -d --quiet-pull > /dev/null 2>&1"

exit 0
