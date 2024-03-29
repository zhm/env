#!/usr/bin/env bash

set -uo pipefail

ENV_PATH=~/Documents/dev/env

ln -sf $ENV_PATH/.zshrc ~/.zshrc
ln -sf $ENV_PATH/.aliases ~/.aliases
ln -sf $ENV_PATH/.functions ~/.functions
ln -sf $ENV_PATH/.gemrc ~/.gemrc
ln -sf $ENV_PATH/.gitconfig ~/.gitconfig
ln -sf $ENV_PATH/.gitignore ~/.gitignore
ln -sf $ENV_PATH/.irbrc ~/.irbrc
ln -sf $ENV_PATH/.ackrc ~/.ackrc
ln -sf $ENV_PATH/.vimrc ~/.vimrc

[ ! -d ~/.vim ] && ln -sf $ENV_PATH/.vim
[ ! -d ~/dev ] && ln -sf ~/Documents/dev ~/dev

mkdir -p ~/.vimtmp
mkdir -p ~/.vimbackup

ln -sf $ENV_PATH/zacmcc.zsh-theme ~/.oh-my-zsh/themes/zacmcc.zsh-theme