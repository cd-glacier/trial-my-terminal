#!bin/bash

echo "mac os用のinstallerになります"

echo

echo "このtrial-my-terminalでは.config/fishを書き換えることになります."
echo "上記のツールを使っていて設定を書いたことがある場合は使用しないでください."
read -p "よろしいでしょうか: (y/N)" yn

case "$yn" in [yY]*) ;; *) echo "中止します." ; exit 1 ;; esac

echo "If .config/fish are exists, change this name."

LINK_FILES=(.config/fish)
for file in ${LINK_FILES[@]}; do \
  if [ -e ~/$file ]; then
    mv ~/$file ~/$file.old
  fi
done

echo "##### clone g-hyoga dotfiles #####"

if [ -d dotfiles ]; then
  echo "dotfiles already exists"
else
  git clone https://github.com/g-hyoga/dotfiles.git
fi

cd dotfiles && make fish
