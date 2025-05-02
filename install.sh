#!/bin/sh

# MAKE SURE THAT ~/.local/share/fonts EXISTS!
# MAKE SURE THAT GIT, WGET AND UNZIP ARE INSTALLED!
# MAKE SURE THAT PICOM IS INSTALLED

cd $HOME/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/Terminus.zip
unzip Terminus.zip
rm Terminus.zip

mkdir $HOME/suckless
cd $HOME/suckless

git clone https://github.com/gato741/dwm
git clone https://github.com/gato741/st
git clone https://github.com/gato741/slstatus
git clone git://git.suckless.org/dmenu

cd dwm
sudo make clean install
cd ..

cd st
sudo make clean install
cd ..

cd slstatus
sudo make clean install
cd ..

cd dmenu
sudo make clean install
cd $HOME

git clone https://github.com/gato741/dotfiles
mv $HOME/dotfiles/backgrounds $HOME
mv $HOME/dotfiles/configs/.vimrc $HOME
mv $HOME/dotfiles/configs/.xinitrc $HOME
