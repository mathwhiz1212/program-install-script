#!/bin/bash


#Open ports and enable firewall.

sudo ufw allow 22
sudo ufw allow 2015
sudo ufw allow 5900
sudo ufw allow 20595
sudo ufw allow 25565
sudo ufw enable

#Install programs that can be installed through APT.

sudo apt-get install -y 0ad audacious audacity audex axel backintime-gnome build-essential \
chromium-browser clang cmake cryptsetup curl darktable digikam flac fslint gcolor2 \
geoclue-2.0 gimp-ufraw git git-gui gitk gnome-search-tool gnupg2 gpa gparted hddtemp \
iotop jpegoptim kcalc kdenlive lame lm-sensors mumble nmap oathtool openshot \
openssh-server opus-tools p7zip-full playonlinux psensor redshift soundconverter steam testdisk \
thunderbird trickle unetbootin unoconv vinagre virt-manager vorbis-tools wine


# Install simplescreenrecorder

sudo add-apt-repository -y ppa:maarten-baert/simplescreenrecorder
sudo apt-get update
sudo apt-get install -y simplescreenrecorder


#Install Atom

wget -O atomdeb.deb https://atom.io/download/deb
sudo dpkg -i atomdeb.deb
rm atomdeb.deb


#Install NodeJS

INSTALL_FAIL2BAN=yes

wget -nv https://raw.githubusercontent.com/coolaj86/node-install-script/master/setup.bash -O - | bash


#Install Open Sans font

sudo mv OpenSans /usr/share/fonts/truetype/
