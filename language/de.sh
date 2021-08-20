#!/bin/bash

# Buttons
btn_1="OK"
btn_2="ABBRECHEN"
btn_3="JA"
btn_4="NEIN"
btn_5="RECOVER"
btn_6="KONFIG"
btn_7="PRÜFEN"

# Titles
tit_1="ERROR"
tit_2="NAS"
tit_3="NETZWERKROBOTER"
tit_4="VLAN"
tit_5="MAILSERVER"
tit_6="LXC-Konfiguration"
tit_7="VM-Konfiguration"

# Words
wrd_1="Benutzername"
wrd_2="Passwort"
wrd_3="Heimnetzwerk"
wrd_4="Basiskonfiguration"
wrd_5="Vorbereitung"
wrd_6="Name"
wrd_7="ID"
wrd_8="Benutzer"
wrd_9="Webadresse"
wrd_10="NAS"
wrd_11="Medienverzeichnis"
wrd_12="Backupverzeichnis"
wrd_13="Freigabepfad"

# start.sh
txt_0001="Skriptsprache geändert zu"
txt_0002="Leider konnte das Standard Konfigurationsverzeichnis nicht gefunden werden."
txt_0003="Es sieht so aus, das es sich bei diesem Server um eine Neuinstallation handelt."
txt_0004="Soll dieser Server neu konfiguriert werden, oder möchtest du eine zuvor gesicherte Konfigurationsdatei von deinem NAS laden (Recovery)?"
txt_0005="Wie lautet die IP-Adresse deiner NAS?"
txt_0006="Wie heißt der Ordner, in dem die Datei zu finden ist (ohne \"\\\" am Anfang oder am Ende)?"
txt_0007="Wie heißt die Datei, die die Konfigurationsvariablen enthält?"
txt_0008="Wie lautet der Benutzername des Benutzers der Leserechte auf deiner NAS hat?"
txt_0009="Wie lautet das Passwort von"
txt_0010="Konfigurationsdatei erfolgreich kopiert"
txt_0011="Die Konfigurationsdatei wurde erfolgreich erstellt"
txt_0012="Die Konfigurationsdatei konnte nicht erstellt werden, dieses Skript wird vorzeitig beendet"
txt_0013="Proxmox Basiskonfiguration erfolgreich beendet"
txt_0014="Proxmox Basiskonfiguration nicht erfolgreich beendet"
txt_0015="Möchtest Du Container in Proxmox installieren?"
txt_0016="Die Conatiner wurden erfolgreich erstellt und konfiguriert"
txt_0017="Eine Conatinerkonfiguration ist nicht gewünscht"
txt_0018="Möchtest Du virtuelle Maschinen in Proxmox installieren?"
txt_0019="Virtuelle Maschinen erfolgreich erstellt"
txt_0020="Konfiguration von virtuellen Maschinen nicht gewünscht"
txt_0021="Der Shell Verlauf von Proxmox Verlauf wurde bereinigt"

# handler/generate_config.sh
txt_0051="Wie lautet der Benutzername, den Du deinem Netzwerkroboter zugewiesen hast?"
txt_0052="Wie lautet das Passwort, welches Du deinem Netzwerkroboter zugewiesen hast?"
txt_0053="Wenn Du hier kein Passwort eingibst, wird automatisch ein sicheres 26-Zeichen langes Passwort erstellt."
txt_0054="Erstelle einen Benutzer auf deiner NAS mit folgenden Daten und weise diesem Benutzer Administratorrechte zu."
txt_0055="Auf deiner NAS werden 2 Freigegebene Ordner benötigt, wenn nicht vorhanden, erstelle diese und weise deinem Netzwerkroboter Lese-/Schreibrachte zu, bevor du fortfährst."
txt_0056="Benutzt Du virtuelle Netzwerke (VLANs)?"
txt_0057="Welche VLAN-ID nutzt Du für dein Server Netzwerk?"
txt_0058="Welche VLAN-ID nutzt Du für dein SmartHome Netzwerk?"
txt_0059="Welche VLAN-ID nutzt Du für dein Gäste Netzwerk?"
txt_0060="An welche E-Mailadresse sollen benachrichtigungen von deinem Server gesendet werden?"
txt_0061="Wie lautet die Adresse deines Postausgangsserver?"
txt_0062="Welcher Port wird für deinen verwendet?"
txt_0063="Benötigt dein Mailserver für den Login TLS/STARTTLS?"
txt_0064="Welcher Benutzername wird für den Login am Mailserver verwendet?"
txt_0065="Wie lautet das Passwort, welches für den Login am Mailserver verwendet wird?"
txt_0066="Wie lautet die Absendeadresse, von der deine E-Mails versendet werden sollen?"
txt_0067="Nutzt Du eine NAS in deinem Netzwerk?"
txt_0068="Wie lautet die IP-Adresse deiner NAS?"
txt_0069="Sollen deine Passwörter unverschlüsselt im Klartext in der Konfigurationsdatei gespeichert werden?"

# bin/config_pve6.sh
txt_0101="Deine NAS wird in Proxmox eingebunden"
txt_0102="Container in diesem Pool sind im täglichen Backup eingeschlossen"
txt_0103="Proxmox Repository wird geändert (Community)"
txt_0104="Aktiviere S.M.A.R.T. auf der Systemfestplatte"
txt_0105="Konfiguriere E-Mail-Benachrichtigung über Systemfestplattenfehler"
txt_0106="Aktiviere und konfiguriere Proxmox Firewall"
txt_0107="alle privaten Netzwerke, wichtig für VPN"
txt_0108="Zusätzliche SSD wird an Proxmox gebunden"
txt_0109="Mailserver erfolgreich konfiguriert"
txt_0110="Mailserver konfiguration nicht erfolgreich"

# bin/config_email.sh
txt_0151="Dies ist eine Testnachricht, versendet durch das Konfigurationsskript von https://SmartHome-IoT.net"
txt_0152="Wenn Du deise E-Mail empfangen hast, kannst Du mit deiner HomeServer konfiguration durch die Bestätigung des Empfangs dieser E-Mail weiter machen."
txt_0153="Mailserver erfolgreich eingerichtet"
txt_0154="Es wurde eine E-Mail anfolgende Adresse gesendet"
txt_0155="Wurde die E-Mail erfolgreich zugestellt? (Je nach Anbieter kann dies bis zu 15 Minuten dauern)"
txt_0156="Die Protokolldatei wird nun auf bekannte Fehler überprüft, gefundene Fehler werden automatisch behoben."
txt_0157="Du findest das Fehlerprotokol in der folgenden Datei."

# handler/gnerate_lxc.sh
txt_0201="Der Container wurde erstellt"
txt_0202="Der Container wurde konfiguriert"
txt_0203="Der Container konnte nicht konfiguriert werden"
txt_0204="Der Container konnte nicht erstellt werden"
txt_0205="Wähle die Container, die Du installieren möchtest. Aktivierte Container sind bereits installiert, wenn Du sie deaktivierst werden sie deinstalliert."
txt_0206="Der Container konnte nicht erstellt werden, da er schon existiert"

# bin/config_lxc_sh.sh
txt_0251="Es kann keine NAS an den Container gebunden werden, da keine konfiguriert ist"
txt_0252="Der Container wird aktualisiert"
txt_0253="Containersoftware wird installiert"
txt_0254="Container wird konfiguriert"
txt_0255="Container wird in Proxmox konfiguriert"
txt_0256="Die Containerkonfiguration wird abgeschlossen"
txt_0257="Die Proxmox Firewall wird für den Container konfiguriert"
txt_0258="Lösche Verlaufsdaten im Container"
