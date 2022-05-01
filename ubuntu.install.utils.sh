#!/bin/bash
sudo apt-get update
# ssh
sudo apt install openssh-server
sudo systemctl status ssh

# git + vim
sudo apt install git
# cd ~/.ssh && ssh-keygen -t rsa -C "irezki@gmail.com"
# .pub file content to be copied to https://github.com/settings/keys
# Follow the page steps.
sudo apt install vim

# calibre
sudo apt-get install libxcb-xinerama0
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin

# utils to mount and manage our network shares
sudo apt install cifs-utils

sudo mkdir -p /share2/Download
sudo mkdir -p /share2/Multimedia
# uid/gid is available via 'id' command
sudo mount.cifs //192.168.1.12/Download   /share2/Download   -o user=admin,pass=@2737594,uid=59999,gid=59999,nobrl
sudo mount.cifs //192.168.1.12/Multimedia /share2/Multimedia -o user=admin,pass=@2737594,uid=59999,gid=59999,nobrl
