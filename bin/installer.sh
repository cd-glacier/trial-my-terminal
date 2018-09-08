#!bin/bash

echo "mac os用のinstallerになります"
echo "brewが導入されている前提です"

echo ""

echo "このtrial-my-terminalでは.config以下のfish, nvim, deinを書き換えることになります."
echo "上記のツールを使っていて設定を書いたことがある場合は使用しないでください."
read -p "よろしいでしょうか: (y/N)" yn

case "$yn" in [yY]*) ;; *) echo "中止します." ; exit 1 ;; esac

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
