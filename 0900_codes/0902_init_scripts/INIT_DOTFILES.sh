#!/bin/sh

cd
mkdir -p Projects
cd Projects
git clone https://github.com/k636174/dotfiles.git

cd
ln -s Projects/dotfiles ~/dotfiles
ln -s ~/dotfiles/zsh/.zshrc .zshrc
 
