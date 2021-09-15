#!/bin/bash

# Buttons
btn_1="OK"
btn_2="ABBRECHEN"
btn_3="JA"
btn_4="NEIN"
btn_5="RECOVER"
btn_6="KONFIG"
btn_7="FREIGABE"
btn_8="LOKAL"
btn_9="DATENTRÄGER"
btn_10="SERVER"
btn_11="ALLE"
btn_12="AUSWÄHLEN"
btn_13="ERSETZEN"
btn_14="NEUE IDS"

# Titles
tit_0001="ERROR"
tit_0002="SYSTEMVORBEREITUNG"
tit_0003="RECOVERY"
tit_0004="PROXMOX HOMESERVER KONFIGURIEREN"
tit_0005="LXC KONFIGURATION"
tit_0006="BACKUP ERSTELLEN"
tit_0007="HOMESERVER KONFIGURATION"
tit_0008="GASTSYSTEME SICHERN"
tit_0009="GASTSYSTEME WIEDERHERSTELLEN"

# Words
wrd_0001="ID"
wrd_0002="Name"
wrd_0003="Benutzername"
wrd_0004="Passwort"
wrd_0005="Heimnetzwerk"
wrd_0006="HomeServer"
wrd_0007="Testnachricht"
wrd_0008="Konfigurationsskript"
wrd_0009="Basiskonfiguration"
wrd_0010="Vorbereitung"
wrd_0011="Benutzer"
wrd_0012="Webadresse"
wrd_0013="NAS"
wrd_0014="Medienverzeichnis"
wrd_0015="Backupverzeichnis"
wrd_0016="Freigabepfad"
wrd_0017="oder"
wrd_0018="Einrichtung"
wrd_0019="Verwaltung"
wrd_0020="Logdatei"
wrd_0021="neu"

# Descriptions
des_0001="per E-Mail versendet"

# start.sh
txt_0001="Skriptsprache geändert zu"
txt_0002="Es wurde keine Proxmox Installation gefunden. Dieses Skript kann nur auf Servern mit Proxmox ausgeführt werden!"
txt_0003="Dieses Skript funktioniert nur auf Servern mit Proxmox Version 6.X oder 7.X"
txt_0004="Dein HomeServer wird auf Systemupdates geprüft"
txt_0005="Systemupdate wird ausgeführt"
txt_0006="Proxmox Repository von Enterprise zu Community geändert"
txt_0007="Dein HomeServer wird auf Systemupdates geprüft, eventuell benötigte Software wird installiert"
txt_0008="Installiere nicht vorhandene, benötigte Software"
txt_0009="Systemvorbereitungen werden beendet"
txt_0010="Updates installiert und benötigte Software wurde installiert"
txt_0011="Da keine Konfiguration gefunden werden konnte, die durch dieses Skript erstellt wurde, muss eine erstellt werden."
txt_0012="Soll dieser Server neu konfiguriert werden, oder möchtest Du eine gesicherte Konfigurationsdatei laden (Recovery)?"
txt_0013="Wo befindet sich die Konfigdatei? (Netzfreigabe z.B. NAS oder lokal z.B. USB-Stick, Server)"
txt_0014="Wie lautet die IP-Adresse des Gerätes, auf dem sich die Freigabe befindet?"
txt_0015="Wie lautet der Ordnerpfad, in dem die Datei zu finden ist (ohne \\ oder / am Anfang oder Ende)?"
txt_0016="Wie heißt die Datei, die die Konfigurationsvariablen enthält?"
txt_0017="Wie lautet der Benutzername des Benutzers der Leserechte auf deiner NAS hat?"
txt_0018="Wie lautet das Passwort von"
txt_0019="Die Konfigurationsdatei wurde ausfolgendem Verzeichnis kopiert"
txt_0020="Hast Du die Datei schon auf deinen Server kopiert, oder befindet sie sich auf einem externen Datenträger?"
txt_0021="Wie lautet der Pfad zu deinem USB-Gerät?"
txt_0022="Wie lautet der lokale Pfad zur Konfigurationsdatei?"
txt_0023="Die Konfigurationsdatei wurde erfolgreich erstellt"
txt_0024="HomeServer Basiskonfiguration erfolgreich beendet"
txt_0025="HomeServer Basiskonfiguration konnte nicht erfolgreich beendet werden"
txt_0026="Die Konfigurationsdatei konnte nicht erstellt werden"
txt_0027="meinen HomeServer updaten"
txt_0028="meinen HomeServer und alle Container aktualisieren"
txt_0029="Container installieren und konfigurieren"
txt_0030="virtuelle Maschinen installieren und Image einbinden"
txt_0031="ein Backup von einem oder mehreren Gastsystemen erstellen"
txt_0032="Gast Systeme aus manuellen Backups wiederherstellen"
txt_0033="Container löschen"
txt_0034="virtuelle Maschine löschen"
txt_0035="beenden und zurück zur Skriptauswahl"
txt_0036="Was möchtest Du tun?"
txt_0037="Im Anhang die aktuelle Log-Datei"
txt_0038="Möchtest Du alle Container und virtuelle Maschinen sichern, oder einzelne auswählen"
txt_0039="Möchtest Du alle manuell gesicherten Container und virtuelle Maschinen wiederherstellen, oder einzelne auswählen"
txt_0040="Backup Job erfolgreich ausgeführt"
txt_0041="Backup Job NICHT erfolgreich ausgeführt, prüfe den LOG auf Fehler"
txt_0042="Wiederherstellung erfolgreich ausgeführt"
txt_0043="Wiederherstellung NICHT erfolgreich ausgeführt, prüfe den LOG auf Fehler"

# /bin/config_email.sh
txt_0101="Dein E-Mailserver wird in Proxmox zum Versenden von Nachrichten konfiguriert"
txt_0102="Dies ist eine Testnachricht, versendet durch das Konfigurationsskript von"
txt_0103="Es wurde eine E-Mail an folgende Adresse gesendet"
txt_0104="Wurde die E-Mail erfolgreich zugestellt? (Je nach Anbieter kann dies bis zu 15 Minuten dauern)"
txt_0105="Die Protokolldatei wird nun auf bekannte Fehler überprüft, gefundene Fehler werden automatisch behoben"
txt_0106="Du findest das Fehlerprotokoll in der folgenden Datei"
txt_0107="Du kannst diese auf Fehler prüfen und die Konfiguration manuell durchführen."

# /bin/config_lxc.sh
txt_0201="Der Container wird konfiguriert"
txt_0202="Wie lautet das Passwort, welches für den Login am Mailserver verwendet wird?"
txt_0203="Die vorhandene  TV-Karte wird in den Container gemountet"
txt_0204="Die vorhandene Grafikkarte wird in den Container gemountet"
txt_0205="Der Container wird dem Backuppool hinzugefügt"
txt_0206="Der Container wird gestartet"
txt_0207="Deine NAS wird dem Container zu Verfügung gestellt"
txt_0208="Samba wird im Container installiert und eingerichtet"
txt_0209="Der Container wird aktualisiert"
txt_0210="Die Containerkonfiguration wird fortgesetzt"
txt_0211="Die Containerkonfiguration wird abgeschlossen, Proxmox wird für den Container konfiguriert"
txt_0212="Erstelle Containerbeschreibung für die Proxmox WebGUI"
txt_0213="Es sind weitere Schritte erforderlich, bitte überprüfe dein E-Mailpostfach"
txt_0214="Die Proxmox Firewall wird für den Container konfiguriert"
txt_0215="Die Einrichtung des Containers ist beendet, Verlaufsdaten werden gelöscht"
txt_0216="Füge dem Conatiner eine Netzwerkkarte im SmartHome Netzwerk hinzu"
txt_0217="Füge dem Conatiner eine Netzwerkkarte im Gäste Netzwerk hinzu"

# /bin/config_pve.sh
txt_0301="Beginne mit der Proxmox Basiskonfiguration"
txt_0302="Von Gästen in diesem Pool werden täglich Backups erstellt"
txt_0303="Deine NAS wird in Proxmox als Backuplaufwerk bekannt gemacht"
txt_0304="Aktiviere S.M.A.R.T. auf der Systemfestplatte"
txt_0305="Konfiguriere E-Mail-Benachrichtigung über Systemfestplattenfehler"
txt_0306="Aktiviere und konfiguriere die Proxmox Firewall"
txt_0307="Alle privaten Netzwerke, wichtig für VPN"
txt_0308="Die zweite SSD wird als Datenlaufwerk für Gastdatenträger/Images und ISO-Dateien an Proxmox gebunden"
txt_0309="Mailserver erfolgreich konfiguriert"
txt_0310="Mailserver Konfiguration nicht erfolgreich"
txt_0311="Die Konfigurationsdatei wird auf der NAS gesichert"
txt_0312="Die Konfigurationsdatei wird dir per E-Mail zugesendet, Passwörter wurden aus Sicherheitsgründen entfernt"
txt_0313="Im Anhang findest du die Datei"
txt_0314="Diese solltest du Sichern, um das Konfigurationsskript beim nächsten Mal im Wiederherstellungsmodus starten zu können"
txt_0315="E-Mailserver erfolgreich konfiguriert"
txt_0316="E-Mailserver NICHT erfolgreich konfiguriert"

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
txt_0501="Erstelle eine Liste mit verfügbaren Containern"
txt_0502="Wähle die Container, die Du löschen möchtest"
txt_0503="Der folgende Container wird gelöscht"
txt_0504="Bist Du sicher das Du fortsetzen möchtest?"
txt_0505="Der Container wurde gelöscht"
txt_0506="Es wurden keine Conatiner auf deinem HomeServer gefunden, wesshalb auch keine gelöscht werden können."

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
txt_0701="Erstelle eine Liste mit verfügbaren Containern"
txt_0702="Wähle die Container, von denen du ein Backup erstellen möchtest"
txt_0703="Von dem folgenden Gast wird ein Backup erstellt"
txt_0704="Backup erfolgreich"
txt_0705="Backup nicht erfolgreich"

# /handler/generate_config.sh
txt_0801="Wie lautet der Benutzername, den Du deinem Netzwerkroboter zugewiesen hast?"
txt_0802="Wie lautet das Passwort, welches Du deinem Netzwerkroboter zugewiesen hast?"
txt_0803="Wenn Du hier kein Passwort eingibst, wird automatisch ein sicheres 26-Zeichen langes Passwort erstellt."
txt_0804="Erstelle einen Benutzer auf deiner NAS mit folgenden Daten und weise diesem Benutzer Administratorrechte zu."
txt_0805="Benutzt Du virtuelle Netzwerke (VLANs)?"
txt_0806="Welche VLAN-ID nutzt Du für dein Produktiv-Netzwerk (Server, Computer usw.)?"
txt_0807="Welche VLAN-ID nutzt Du für dein IoT-Netzwerk (SmartHome Geräte)?"
txt_0808="Welche VLAN-ID nutzt Du für dein Gäste Netzwerk?"
txt_0809="An welche E-Mailadresse sollen Benachrichtigungen von deinem Server gesendet werden?"
txt_0810="Wie lautet die Adresse deines Postausgangsserver?"
txt_0811="Welchen Port benutzt dein Postausgangsserver?"
txt_0812="Benötigt dein Mailserver für den Login TLS/STARTTLS?"
txt_0813="Welcher Benutzername wird für den Login am Mailserver verwendet?"
txt_0814="Wie lautet das Passwort, welches für den Login am Mailserver verwendet wird?"
txt_0815="Wie lautet die Absende Adresse, von der deine E-Mails versendet werden sollen?"
txt_0816="Nutzt Du eine NAS in deinem Netzwerk (Synology, QNAP, etc.)?"
txt_0817="Wie lautet die IP-Adresse deiner NAS?"
txt_0818="Die angegebene IP-Adresse ist nicht erreichbar"
txt_0819="Auf deiner NAS werden 2 Freigegebene Ordner benötigt, wenn nicht vorhanden, erstelle diese und weise deinem Netzwerkroboter Lese-/Schreibrachte zu, bevor du fortfährst."
txt_0820="Deine NAS konnte nicht erreicht werden. Prüfe, ob deine NAS angeschaltet und mit deinem Netzwerk verbunden ist."
txt_0821="Möchtest du nochmal versuchen deine NAS anzugeben?"
txt_0822="Sollen deine Passwörter unverschlüsselt im Klartext in der Konfigurationsdatei gespeichert werden (Sicherheit beachten)?"
txt_0823="Konfigurationsdatei erfolgreich erstellt"
txt_0824="Die Konfigurationsdatei konnte nicht erstellt werden"
txt_0825="Benutzt Du eine NAS von Synology?"
txt_0826="Welche IP-Adresse hat das Gateway in diesem VLAN (mit CIDR, also IP.AD.RE.SS/CIDR)"
txt_0827="Welche VLAN-ID nutzt Du für dein DHCP-Netzwerk (Mobile Engeräte)?"

# /handler/generate_lxc.sh
txt_0901="Erstelle eine Liste mit verfügbaren Containern"
txt_0902="Die Konfiguration der folgenden Container benötigen Benutzereingaben"
txt_0903="Beginne mit der Erstellung des Containers"
txt_0904="Der folgende Container wurde erstellt und wird jetzt für die Konfiguration vorbereitet"
txt_0905="Standardsoftware wird im Container installiert"
txt_0906="Die Installation und Konfiguration des Containers war erfolgreich"
txt_0907="Die Installation und Konfiguration des Containers war NICHT erfolgreich"
txt_0908="Der erstellte Container wurde nicht gefunden, es ist ein unbekannter Fehler aufgetreten"
txt_0909="Welche/n Container möchtest Du installieren?"
txt_0910="Der folgende Container konnte nicht erstellt werden, da er schon existiert"

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
txt_1101="Alle vorhandenen manuell erstellten Sicherungen in Deinem Backupverzeichnis werden gelöscht. Wenn Du sie behalten möchten, sicher sie, bevor Du fortfährst. Dies gilt nicht für Sicherungen, die automatisch durch einen Cron-Job erstellt wurden."
txt_1102="Es wird ein manuelles Backup von allen Gastsystemen erstellt"
txt_1103="Um eine höchstmögliche Backupqualität sicherzustellen, wird das jeweilige Gastsystem heruntergefahren"
txt_1104="Backupprozess von Gast gestartet"
txt_1105="Das Gastsystem wird runtergefahren, um eine hohe Sicherungsqualität sicher zu stellen"
txt_1106="Manuelles Backup erfolgreich beendet"
txt_1107="Manuelles Backup konnte NICHT erfolgreich abgeschlossen werden"
txt_1108="manuell erstellt durch das Skript von"
txt_1109="Welche Gastsysteme möchtest du sichern"
txt_1110="Es wurden weder Container noch virtuelle Maschinen gefunden. Es gibt nichts von dem ein Backup erstellt werden könnte."

# /handler/restore.sh
txt_1201="Es wurden keine manuellen Backups gefunden. Um automatisch erzeugte Backups wiederherzustellen, nutze bitte die Proxmox Weboberfläche"
txt_1202="Sollen alle eventuell vorhandenen Gastsysteme durch manuell erstellte Backups ersetzt werden, oder willst Du neue Gastsysteme mit neuen IDs erstellen"
txt_1203="Alle gefundenen manuellen Backups werden wiederhergestellt"
txt_1204="Lösche vorhandenes Gastsystem"
txt_1205="Das Gastsystem wurde gelöscht"
txt_1206="Die Wiederherstellung des Gastsystems war erfolgreich"
txt_1207="Das Gastsystem konnte NICHT wiederhergestellt werden"
txt_1208="Das Gastsystem konnte NICHT gelöscht werden"
