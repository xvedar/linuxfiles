#!/bin/bash
sudo apt-get update
sudo apt install openssh-server
sudo systemctl status ssh
sudo apt install vim
sudo apt-get install libxcb-xinerama0
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
sudo apt install git
