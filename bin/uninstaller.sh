#!bin/bash

echo "##### ununinstall neovim #####"
brew uninstall neovim/neovim/neovim
brew uninstall python3
pip3 uninstall neovim
pip3 uninstall neovim --upgrade

echo "##### uninstall fish #####"
brew uninstall fish

echo "##### uninstall ghq #####"
brew uninstall ghq

echo "##### uninstall fzf #####"
brew uninstall fzf

echo "##### uninstall dependency #####"
brew uninstall bat

