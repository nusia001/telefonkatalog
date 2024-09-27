# Telefonkatalog

## Om dette
Denne python-basert koden implementerer en enkel telefonkatalog som lar brukere legge til, søke etter og vise kontakter. Katalogen lagrer navn og telefonnumre i en database (MariaDB/MySQL). Koden er enkel og kan utvides med flere funksjoner, som for eksempel sletting av kontakter.

## Installasjon
Dette er en installasjonsguide for å sette opp en Raspberry Pi med Ubuntu for å kjøre telefonkatalogen.

Du vil trenge følgende:
- En Raspberry Pi 4
- En PC
- Tastatur, mus og skjerm
- Strømforsyning (til Raspberry Pi)
- Internett-tilkobling

Last ned og installer "Raspberry Pi Imager" for Windows på PC-en din fra https://www.raspberrypi.com/software/. Sett inn MicroSD-kortet inn i PC-en og åpne appen. Velg Raspberry Pi 4, Ubuntu Desktop og MicroSD-kortet og last det ned. Sett MicroSD-kortet tilbake i Raspberry Pi.

Koble strøm, tastatur, mus og skjerm til Raspberry Pi og gå gjennom trinnene for å sette opp Ubuntu. Sørg for at du kobler til internett.

Trykk "CTRL" + "ALT" + "T" for å åpne terminal og skriv følgende kommandoer i den for å se etter og installere oppdateringer til programvarene som er installert.

``` console
sudo apt update
sudo apt upgrade
```

Sett opp brannmuren.

``` console
sudo apt install ufw
sudo ufw enable
sudo ufw allow ssh
```

Skru på SSH slik at du kan styre maskinen fra PC-en din senere.

``` console
sudo apt install openssh-server
sudo systemctl enable ssh
sudo systemctl start ssh
```

Installer Git, Python og MariaDB

``` console
sudo apt intsall python3-pip
sudo apt install git
sudo apt install mariadb-server
sudo mysql_secure_installation
```

Kjør sudo apt update og sudo apt upgrade igjen.

Finn IP-adressen din. Det trenger man for å kunne bruke SSH. 

``` console
ip a
```

Hvis du har kablet nettverk, vil IP-adressen vises ved eth0: linjen. Hvis du har trådløst, vil IP-adressen vises ved wlan0: linjen

Trykk "Windows" + "R", skriv "cmd" og trykk "Enter" for å åpne Ledetekst/Command Prompt. Bytt ut "brukernavn" og "ip" med navnet og IP-adressen til Raspberry Pi.

``` console
ssh brukernavn@ip
```

Du kan nå styre Raspberry Pi fra PC-en din.

Last ned py- og sql-filene fra denne repoen. Logg inn i MariaDB.

``` console
sudo mariadb -u root
```

Kopier og lim inn koden fra sql-filen inn i MariaDB. Åpne Python-koden på PC-en din med Visual Studio Code og skriv denne kommandoen i terminalen.

``` console
pip install mysql-connector-python
```

I koden er det skrevet "host", "user" og "passord" på flere steder. Rediger på disse og fyll inn IP-adressen, brukernavnet og passordet til Raspberry Pi. Kjør koden.