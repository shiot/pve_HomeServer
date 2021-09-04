#!/bin/bash

# Buttons
btn_1="OK"
btn_2="CANCEL"
btn_3="YES"
btn_4="NO"
btn_5="RECOVER"
btn_6="CONFIG"
btn_7="RELEASE"
btn_8="LOCAL"
btn_9="DATA CARRIER"
btn_10="SERVER"
btn_11="ALL"
btn_12="SELECT"
btn_13="REPLACE"
btn_14="NEW IDS"

# Titles
tit_0001="ERROR"
tit_0002="SYSTEM PREPARATION"
tit_0003="RECOVERY"
tit_0004="CONFIGURING PROXMOX HOMESERVER"
tit_0005="LXC CONFIGURATION"
tit_0006="CREATE BACKUP"
tit_0007="HOMESERVER CONFIGURATION"
tit_0008="BACKUP GUEST SYSTEMS"
tit_0009="RECOVER GUEST SYSTEMS"

# Words
wrd_0001="ID"
wrd_0002="Name"
wrd_0003="Username"
wrd_0004="Password"
wrd_0005="Home network"
wrd_0006="HomeServer"
wrd_0007="Test message"
wrd_0008="Configuration script"
wrd_0009="Basic configuration"
wrd_0010="Preparation"
wrd_0011="User"
wrd_0012="Web address"
wrd_0013="NAS"
wrd_0014="Media Directory"
wrd_0015="Backup directory"
wrd_0016="Share path"
wrd_0017="or"
wrd_0018="Setup"
wrd_0019="Administration"
wrd_0020="Logfile"

# Descriptions
des_0001="sent by email"

# start.sh
txt_0001="Script language changed to"
txt_0002="No Proxmox installation was found. This script can only run on servers with Proxmox!"
txt_0003="This script works only on servers with Proxmox version 6.X or 7.X"
txt_0004="Your HomeServer is checked for system updates"
txt_0005="System update is executed"
txt_0006="Proxmox repository changed from Enterprise to Community"
txt_0007="Your HomeServer is checked for system updates, possibly required software will be installed"
txt_0008="Install not existing but needed software"
txt_0009="System preparations are terminated"
txt_0010="Updates and required software was installed"
txt_0011="Since this could not find a configuration created by this script, one must be created"
txt_0012="Do you want to reconfigure this server, or do you want to load a saved configuration file (recovery)?"
txt_0013="Where is the config file located? (Network share e.g. NAS or locally e.g. USB stick, server)"
txt_0014="What is the IP address of the device the share is on?"
txt_0015="What is the folder path where the file can be found (without \ or / at the beginning or end)?"
txt_0016="What is the name of the file that contains the configuration variables?"
txt_0017="What is the username of the user that has read permissions on your NAS?"
txt_0018="What is the password of"
txt_0019="The configuration file was copied from the following directory"
txt_0020="Have you already copied the file to your server, or is it on an external disk?"
txt_0021="What is the path to your USB device?"
txt_0022="What is the local path to the configuration file?"
txt_0023="The configuration file was created successfully"
txt_0024="HomeServer base configuration completed successfully"
txt_0025="HomeServer base configuration could not be completed successfully"
txt_0026="The configuration file could not be created"
txt_0027="update my HomeServer"
txt_0028="update my HomeServer and all containers"
txt_0029="install and configure containers"
txt_0031="create a backup of one or more guest systems"
txt_0032="restore one or more guest systems from"
txt_0032="restore my guest systems from backups"
txt_0033="Delete Containers"
txt_0034="delete virtual machine"
txt_0035="quit and return to script selection"
txt_0036="What do you want to do?"
txt_0037="Attached is the current log file"
txt_0038="Do you want to back up all containers and virtual machines, or select individual ones"?
txt_0039="Do you want to restore all manually backed up containers and virtual machines, or select individual ones"?
txt_0040="Backup job executed successfully".
txt_0041="Backup job NOT successfully executed, check the LOG for errors".
txt_0042="Restore job executed successfully".
txt_0043="Restore job NOT successfully executed, check the LOG for errors".

# /bin/config_email.sh
txt_0101="Your mail server will be configured in proxmox to send messages"
txt_0102="This is a test message, sent by the configuration script of"
txt_0103="An email was sent to the following address"
txt_0104="Was the email delivered successfully? (Depending on the provider, this can take up to 15 minutes)"
txt_0105="The log file is now checked for known errors, found errors are automatically fixed"
txt_0106="You can find the error log in the following file"
txt_0107="You can check this for errors and do theConfiguration manually."

# /bin/config_lxc.sh
txt_0201="The container is being configured"
txt_0202="What is the password used to login to the mail server?"
txt_0203="The existing TV card will be mounted into the container"
txt_0204="The existing graphic card is mounted into the conatiner"
txt_0205="The container is added to the Backuppool"
txt_0206="The container is started"
txt_0207="Your NAS is made available to the container"
txt_0208="Samba will be installed and set up in the container"
txt_0209="The container is updated"
txt_0210="The container configuration is continued"
txt_0211="The container configuration is completed, Proxmox is configured for the container"
txt_0212="Create container description for Proxmox WebGUI"
txt_0213="There are more steps needed, please check your email box"
txt_0214="The Proxmox firewall is configured for the container"
txt_0215="The container setup is finished, history data will be deleted"

# /bin/config_pve.sh
txt_0301="Start with the basic proxmox configuration"
txt_0302="Backups are made daily of guests in this pool"
txt_0303="Your NAS will be made known in Proxmox as a backup drive"
txt_0304="Enable S.M.A.R.T. on the system hard disk"
txt_0305="Configure e-mail notification of system disk errors"
txt_0306="Enable and configure Proxmox firewall"
txt_0307="All private networks, important for VPN"
txt_0308="The second SSD is bound to Proxmox as a data drive for guest disks/images and ISO files"
txt_0309="Mailserver successfully configured"
txt_0310="Mailserver configuration not successful"
txt_0311="The configuration file will be backed up on the NAS".
txt_0312="The configuration file will be sent to you by email, passwords have been removed for security reasons"
txt_0313="In the attachment you find the file"
txt_0314="You should save this, in order to be able to start the configuration script with the next time in the recovery mode"
txt_0315="Email server successfully configured"
txt_0316="Email server NOT configured successfully"

# /bin/config_vm.sh
txt_0401=""
txt_0402=""
txt_0403=""
txt_0404=""
txt_0405=""
txt_0406=""
txt_0407=""
txt_0408=""
txt_0409=""
txt_0410=""
txt_0411=""
txt_0412=""
txt_0413=""
txt_0414=""
txt_0415=""
txt_0416=""
txt_0417=""
txt_0418=""
txt_0419=""
txt_0420=""

# /handler/delete_lxc.sh
txt_0501="Create a list of available containers"
txt_0502="Select the containers you want to delete"
txt_0503="The following container will be deleted"
txt_0504="Are you sure you want to continue?"
txt_0505="The container has been deleted"

# /handler/delete_vm.sh
txt_0601=""
txt_0602=""
txt_0603=""
txt_0604=""
txt_0605=""
txt_0606=""
txt_0607=""
txt_0608=""
txt_0609=""
txt_0610=""
txt_0611=""
txt_0612=""
txt_0613=""
txt_0614=""
txt_0615=""
txt_0616=""
txt_0617=""
txt_0618=""
txt_0619=""
txt_0620=""

# /handler/generate_backup.sh
txt_0701="Create a list of available containers"
txt_0702="Select the containers from which you want to create a backup"
txt_0703="Backup the following guest"
txt_0704="Backup successful"
txt_0705="Backup not successful"

# /handler/generate_config.sh
txt_0801="What is the username you assigned to your network robot?"
txt_0802="What is the password you assigned to your network robot?"
txt_0803="If you don't enter a password here, a secure 26-character password will be created automatically."
txt_0804="Create a user on your NAS with the following data and assign administrator rights to this user."
txt_0805="Are you using virtual networks (VLANs)?"
txt_0806="What VLAN ID are you using for your server network?"
txt_0807="Which VLAN ID do you use for your SmartHome network?"
txt_0808="Which VLAN ID do you use for your guest network?"
txt_0809="To which email address should notifications from your server be sent?"
txt_0810="What is the address of your outgoing mail server?"
txt_0811="What port does your outgoing mail server use?"
txt_0812="Does your mail server require TLS/STARTTLS for login?"
txt_0813="What username is used to login to the mail server?"
txt_0814="What is the password used to login to the mail server?"
txt_0815="What is the sending address from which your emails should be sent?"
txt_0816="Are you using a NAS on your network (Synology, QNAP,etc.)?"
txt_0817="What is the IP address of your NAS?"
txt_0818="The specified IP address is not reachable"
txt_0819="2 Shared Folders are required on your NAS, if not present, create them and assign read/write access to your network robot before proceeding."
txt_0820="Your NAS could not be reached. Check if your NAS is turned on and connected to your network."
txt_0821="Do you want to try again to specify your NAS?"
txt_0822="Do you want to store your passwords unencrypted in plain text in the configuration file (consider security)?"
txt_0823="Configuration file successfully created"
txt_0824="The configuration file could not be created"
txt_0825="Do you use a NAS from Synology?"

# /handler/generate_lxc.sh
txt_0901="Create a list of available containers"
txt_0902="The configueration of the following container(s) need user input"
txt_0903="Begin with the creation of the container"
txt_0904="The following container was created and is prepared now for the configuration"
txt_0905="Standard software will be installed in the container"
txt_0906="The installation and configuration of the container was successful"
txt_0907="The installation and configuration of the container was NOT successful"
txt_0908="The created container was not found, an unknown error occurred"
txt_0909="Which container(s) do you want to install?"
txt_0910="The following container could not be created, because it already exists"

# /handler/generate_vm.sh
txt_1001=""
txt_1002=""
txt_1003=""
txt_1004=""
txt_1005=""
txt_1006=""
txt_1007=""
txt_1008=""
txt_1009=""
txt_1010=""
txt_1011=""
txt_1012=""
txt_1013=""
txt_1014=""
txt_1015=""
txt_1016=""
txt_1017=""
txt_1018=""
txt_1019=""
txt_1020=""

# /handler/backup.sh
txt_1101="All existing manually created backups in your backup directory will be deleted, if you want to keep them, back them up before continuing. This does not apply to backups created automatically by a cron job."
txt_1102="A backup of all guest systems will be created"
txt_1103="To ensure the highest possible backup quality, the respective guest system is shut down"
txt_1104="Backup process started by guest"
txt_1105="The guest system is shut down to ensure the highest possible backup quality"
txt_1106="Backup completed successfully"
txt_1107="Backup NOT successful"

# /handler/restore.sh
txt_1201="No manual backups were found. To restore automatically created backups please use the Proxmox web interface"
txt_1202="Do you want to replace any existing guest systems with the backups, or do you want to create new IDs?"
txt_1203="All found backups will be restored"
txt_1204="Delete existing guest system"
txt_1205="Guest system successfully deleted"
txt_1206="Guest system successfully restored"
txt_1207="Guest system could NOT be restored"
txt_1208="The guest system could NOT be deleted"
