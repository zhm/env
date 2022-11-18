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
ln -sf $ENV_PATH/.vim ~/.vim