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

pct exec $ctID -- bash -ci "apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0xA236C58F409091A18ACA53CBEBFF6B99D9B78493 > /dev/null 2>&1"
pct exec $ctID -- bash -ci "echo \"deb http://apt.sonarr.tv/ master main\" | tee /etc/apt/sources.list.d/sonarr.list > /dev/null 2>&1"
pct exec $ctID -- bash -ci "apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF > /dev/null 2>&1"
pct exec $ctID -- bash -ci "echo \"deb https://download.mono-project.com/repo/ubuntu stable-focal main\" | tee /etc/apt/sources.list.d/mono-official-stable.list > /dev/null 2>&1"
pct exec $ctID -- bash -ci "apt-get install -y mono-devel mediainfo nzbdrone > /dev/null 2>&1"
pct exec $ctID -- bash -ci "mkdir -p /media/Series/ > /dev/null 2>&1"
pct exec $ctID -- bash -ci "mkdir -p /root/.config/NzbDrone/ > /dev/null 2>&1"
pct push $ctID "$script_path/lxc/$containername/sonarr.service" "/etc/systemd/system/sonarr.service"
pct push $ctID "$script_path/lxc/$containername/config.xml" "/root/.config/NzbDrone/config.xml"
pct exec $ctID -- bash -ci "sed -i 's#IPADRESSTOCHANGE#'"$ctIP"'#' /root/.config/NzbDrone/config.xml"
pct exec $ctID -- bash -ci "sed -i 's#APIKEYTOCHANGE#'"$( generateAPIKey 32 )"'#' /root/.config/NzbDrone/config.xml"
pct exec $ctID -- bash -ci "systemctl start sonarr && systemctl enable sonarr > /dev/null 2>&1"

exit 0
