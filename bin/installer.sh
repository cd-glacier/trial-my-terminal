#!bin/bash

echo "mac os用のinstallerになります"
echo "brewが導入されている前提です"

echo "##### install neovim #####"
brew install neovim/neovim/neovim
brew install python3
pip3 install neovim
pip3 install neovim --upgrade

echo "##### install fish #####"
brew install fish

echo "##### install ghq #####"
brew install ghq

echo "##### install fzf #####"
brew install fzf

echo "##### install dependency #####"
brew install bat

