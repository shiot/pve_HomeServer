#!/bin/bash

function githubLatest() {
  curl --silent "https://api.github.com/repos/$1/releases/latest" | # Get latest release from GitHub api
    grep '"tag_name":' |                                            # Get tag line
    sed -E 's/.*"([^"]+)".*/\1/'                                    # Pluck JSON value
}

gh_tag=$(githubLatest "shiot/pve_HomeServer")

clear
source <(curl -sSL https://raw.githubusercontent.com/shiot/pve_HomeServer/${gh_tag}/logo.sh)
logo

# Checks if Proxmox ist installed
if [ ! -d "/etc/pve/"]
  echo "No Proxmox installation was found. This script can be executed only on Proxmox servers!"
  exit 1
fi

# Checks the PVE MajorRelease
pve_majorversion=$(pveversion | cut -d/ -f2 | cut -d. -f1)
if [ $pve_majorversion -ne 6 ]; then
  echo "This script currently works only for Proxmox version 6"
  exit 1
fi

# Performs a system update and installs software required for this script
{
  apt-get update 2>&1 >/dev/null
  echo -e "XXX\n29\nInstall required software ...\nXXX"
  for package in "parted smartmontools libsasl2-modules lxc-pve"; do
    if [ $(dpkg-query -W -f='${Status}' "$package" | grep -c "ok installed") -eq 0 ]; then
      apt-get install -y "$package" 2>&1 >/dev/null
    fi
  done
  echo -e "XXX\n87\nSystem will be updated ...\nXXX"
  apt-get dist-upgrade -y 2>&1 >/dev/null && apt-get autoremove -y 2>&1 >/dev/null && pveam update 2>&1 >/dev/null
  echo -e "XXX\n98\nCopy gitHub repository ...\nXXX"
  wget -c https://github.com/shiot/pve_HomeServer/archive/refs/tags/${gh_tag}.tar.gz -O - | tar -xz
  mv pve_HomeServer-${gh_tag}/ pve_HomeServer/
} | whiptail --backtitle "© 2021 - SmartHome-IoT.net" --title "System preparation" --gauge "System will be updated, required software will be installed ..." 10 80 0
echo "- System updated and required software installed"

# Enter script Dir and load required files
cd pve_HomeServer/
source handler/global_functions.sh
source language/_languages.sh

# Choose Script Language
var_language=$(whiptail --nocancel --backtitle "© 2021 - SmartHome-IoT.net" --menu "" 20 80 10 "${lng[@]}" 3>&1 1>&2 2>&3)
source language/$var_language.sh

# If no Config File is found, ask User to recover or to make a new Configuration
if [ ! -d "$shiot_configPath" ]; then
  mkdir -p $shiot_configPath
  NEWT_COLORS='
    window=black,red
    border=white,red
    textbox=white,red
    button=black,yellow
  ' \
  whiptail --yesno --yes-button " RECOVER " --no-button " KONFIG " --backtitle "© 2021 - SmartHome-IoT.net" --title "ERROR" "\nLeider konnte das standart Konfigurationsverzeichnis nicht gefunden werden.\n\nEs sieht so aus, das es sich bei diesem Server um eine Neuinstallation handelt.\n\nSoll dieser Server neu konfiguriert werden, oder möchtest du eine zuvor gesicherte Konfigurationsdatei von deinem NAS laden (Recovery)?" 20 80
  yesno=$?
  if [ $yesno -eq 0 ]; then
    cfg_nasIP=
    while ! pingIP $cfg_nasIP; do
      cfg_nasIP=$(whiptail --inputbox --ok-button " OK " --nocancel --backtitle "© 2021 - SmartHome-IoT.net" --title "NAS" "\nWie lautet die IP-Adresse deiner NAS?" 10 80 $networkIP. 3>&1 1>&2 2>&3)
    done
    if [ ! -d "/mnt/cfg_temp" ]; then mkdir -p /mnt/cfg_temp; fi
    cfg_dir=$(whiptail --inputbox --ok-button " OK " --nocancel --backtitle "© 2021 - SmartHome-IoT.net" --title "NAS" "\nWie heißt der Ordner, in dem die Datei zu finden ist (ohne \"\\\" am Anfang oder Ende)?" 10 80 Path/to/File 3>&1 1>&2 2>&3)
    cfg_filename=$(whiptail --inputbox --ok-button " OK " --nocancel --backtitle "© 2021 - SmartHome-IoT.net" --title "NAS" "\nWie heißt die Datei, die die Konfigurationsvariablen enthält?" 10 80 Proxmox_Configuration.txt 3>&1 1>&2 2>&3)
    cfg_mountUser=$(whiptail --inputbox --ok-button " OK " --nocancel --backtitle "© 2021 - SmartHome-IoT.net" --title "NAS" "\nWie lautet der Benutzername des Benutzers der Leserechte auf deiner NAS hat?" 10 80 netrobot 3>&1 1>&2 2>&3)
    cfg_mountPass=$(whiptail --passwordbox --nocancel --backtitle "© 2021 - SmartHome-IoT.net" --title "NAS" "\nWie lautet das Passwort von \"${cfg_mountUser}\"?" 10 80 3>&1 1>&2 2>&3)
    mount -t cifs -o user="$cfg_mountUser",password="$cfg_mountPass",rw,file_mode=0777,dir_mode=0777 //$cfg_nasIP/$cfg_dir /mnt/cfg_temp
    cp /mnt/cfg_temp/$cfg_filename $shiot_configPath/$shiot_configFile
    umount /mnt/cfg_temp
    rm -d /mnt/cfg_temp
    echo "- Konfigurationsdatei erfolgreich kopiert"
  else
    bash handler/generate_config.sh $var_language $cfg_nasIP
  fi
fi

bash bin/config_pve${pve_majorversion}.sh

exit 0
