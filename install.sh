#!/bin/bash

echo "starting install"
echo "moving config files into .config"

path=$(pwd)
echo $path

cd /
cd $path

echo "building dwm"
mv -t ~/.config dwm/
cd ~/.config/dwm
sudo make clean install
cd /
cd $path

echo "building dmenu"
mv -t ~/.config dmenu/
cd ~/.config/dmenu
sudo make clean install
cd /
cd $path

echo "building dwmblocks"
mv -t ~/.config dwmblocks/
cd ~/.config/dwmblocks
sudo make clean install
cd /
cd $path

echo "modifying bashRC"
cd ~
rm .bashrc
cd /
cd $path
mv bashrc ~/.bashrc

echo "modifying xinit"
cd /etc/X11/xinit
sudo rm xinitrc
cd /
cd $path
sudo mv xinitrc /etc/X11/xinit/xinitrc

echo "modifying vim"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

