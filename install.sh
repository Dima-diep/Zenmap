#!/bin/bash
apt install nmap ncurses dialog -yq || sudo apt install nmap ncurses dialog -yq || pacman -S nmap dialog ncurses || sudo pacman -S nmap dialog ncurses || sudo dnf install nmap dialog ncurses || dnf install nmap dialog ncurses || zypper install nmap dialog ncurses || sudo zypper install nmap dialog ncurses || apk add nmap dialog ncurses || sudo apk add dialog nmap ncurses
mv zenmap.sh ~/../usr/bin/zenmap || sudo mv zenmap.sh ~/../bin/zenmap
echo "Zenmap has been installed. Run zenmap for usage"