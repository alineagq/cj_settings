#!/bin/bash

# SETTINGS

black='\033[0;30m'
red='\033[0;31m'
green='\033[0;32m'
orange='\033[0;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
lightgray='\033[0;37m'
darkgray='\033[1;30m'
lightred='\033[1;31m'
lightgreen='\033[1;32m'
yellow='\033[1;33m'
lightnlue='\033[1;34m'
lightpurple='\033[1;35m'
lightcyan='\033[1;36m'
white='\033[1;37m'

ignore_error= > /dev/null 2>&1

##########################################################################
######################### START  SCRIPT ##################################
##########################################################################

# echo -e "${blue}Updating system${white}"
# echo -e "${yellow}Sudo password is require for complete installation.${white}"

# sudo apt-get update -y ${ignore_error}
# sudo apt-get upgrade -y ${ignore_error}

# INSTALL CODIUM

# echo -e "${purple}Installing Codium${white}"

# wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg ${ignore_error} \
#     | gpg --dearmor ${ignore_error}\
#     | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg ${ignore_error}

# echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
#     | sudo tee /etc/apt/sources.list.d/vscodium.list ${ignore_error}

# sudo apt-get update ${ignore_error}
# sudo apt-get install codium ${ignore_error}
# sudo apt-get upgrade ${ignore_error}
# sudo apt-get autoremove ${ignore_error}

# echo -e "${green}DONE.${white}"

# INSTALL PYTHON/PIP/DJANGO

# sudo apt install python-is-python3

# echo -e "${purple}Installing Pip.${white}"

# sudo apt-get install python3-pip ${ignore_error}

# export PATH=$PATH:/home/$USER/.local/bin

# echo -e "${green}DONE.${white}"

# echo -e "${purple}Installing Django.${white}"

# python -m pip install Django ${ignore_error}

# echo -e "${green}DONE.${white}"

# INSTALL DOCKER

# modprobe kvm 
# modprobe kvm_amd
# sudo usermod -aG kvm $USER

# sudo apt-get install gnome-terminal ${ignore_error}
# sudo apt remove docker-desktop ${ignore_error}
# rm -r $HOME/.docker/desktop
# sudo rm /usr/local/bin/com.docker.cli
# sudo apt purge docker-desktop ${ignore_error}
# sudo apt-get update ${ignore_error}
# sudo apt-get install \
#     ca-certificates \
#     curl \
#     gnupg \
#     lsb-release ${ignore_error}

# sudo mkdir -p /etc/apt/keyrings
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
# echo \
#   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# sudo apt-get update -y ${ignore_error}
# sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin ${ignore_error}

# sudo groupadd docker
# sudo usermod -aG docker $USER
# newgrp docker

# INSTALL DISCORD

# snap install discord
# sudo apt-get install discord ${ignore_error}

# INSTALL ZSH/TERMINATOR

# sudo apt-get install terminator -y ${ignore_error}
# sudo update-alternatives --config x-terminal-emulator ${ignore_error}
# sudo apt-get install zsh -y ${ignore_error}

# cp *.ttf /usr/local/share/fonts
# mkdir -p ~/.local/share/fonts && cp *.ttf ~/.local/share/fonts

# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# chsh -s $(which zsh)

# INSTALL BRAVE

# sudo curl -fsSLo /usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg https://brave-browser-apt-nightly.s3.brave.com/brave-browser-nightly-archive-keyring.gpg ${ignore_error}
# echo "deb [signed-by=/usr/share/keyrings/brave-browser-nightly-archive-keyring.gpg arch=amd64] https://brave-browser-apt-nightly.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-nightly.list

# sudo apt update -y ${ignore_error}
# sudo apt install brave-browser-nightly -y ${ignore_error}