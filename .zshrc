ZSH=$HOME/.oh-my-zsh
ZSH_THEME="zacmcc"

# reset the path
export PATH=/usr/bin:/bin:/usr/sbin:/sbin

[ -f ~/Dropbox/private/.zsh_history ] && HISTFILE=~/Dropbox/private/.zsh_history

[ -f /opt/homebrew/bin/brew ] && eval "$(/opt/homebrew/bin/brew shellenv)"
[ -f /usr/local/Homebrew/bin/brew ] && eval "$(/usr/local/Homebrew/bin/brew shellenv)"

export EDITOR='mvim -f'
export GIT_EDITOR='mvim -f'
export DROPBOX_PATH=$HOME/Dropbox
export DEV_PATH=$DROPBOX_PATH/dev
export MONGO_PATH=$DROPBOX_PATH/dev/mongodb-osx-x86_64-2.0.2
export ANDROID_SDK_PATH=$HOME/Library/Android/sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
# export CLASSPATH=$HOME/local/jar
export RY_PREFIX=$HOME/local
export PHP_PATH=$HOME/local/src/PHP5
export GOPATH=$HOME/go
export OCLINT_HOME=$HOME/local/oclint
export JAVA_HOME="/Applications/Android Studio.app/Contents/jbr/Contents/Home"
# export PYTHONPATH=/usr/local/lib/python3.7/site-packages

export FULCRUM_WEB=$HOME/dev/fulcrum
export FULCRUM_IOS=$HOME/dev/fulcrum-ios
export FULCRUM_ANDROID=$HOME/dev/fulcrum-android
export FULCRUM_SITE=$HOME/dev/fulcrumapp.com
export FULCRUM_DEV_SITE=$HOME/dev/developer.fulcrumapp.com
export FULCRUM_TILES=$HOME/dev/fulcrum_tiles
export HOMEBREW_NO_AUTO_UPDATE=1
export SKAFFOLD_CLEANUP=false

export FULCRUM_HELPER_BRANCH=main
export FULCRUM_UPDATE_PROFILE=no
export FULCRUM_DEFAULT_CONTEXT=chaos
export FULCRUM_PERMISSIONS_FULCRUM=Admin
export FULCRUM_PERMISSIONS_CHAOS=Admin

export GPG_TTY=$(tty)

plugins=(git ruby rails macos fulcrum)

source $ZSH/oh-my-zsh.sh
source ~/.functions
source ~/.aliases
source-if-exists ~/.aws
source-if-exists ~/.private


# . $(brew --prefix asdf)/asdf.sh
# . $HOMEBREW_PREFIX/opt/asdf/libexec/asdf.sh

prepend-path "/usr/local/MacGPG2/bin"
prepend-path "/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
prepend-path "/Applications/Cursor.app/Contents/Resources/app/bin"
prepend-path "/Applications/Ghostty.app/Contents/MacOS"
# prepend-path "/Applications/Android Studio.app/Contents/jre/Contents/Home/bin"
prepend-path "$HOME/Downloads/android-ndk-r10e"
# prepend-path "$ANDROID_SDK_PATH/platform-tools"
prepend-path "$HOMEBREW_PREFIX/share/python"
prepend-path "$HOMEBREW_PREFIX/sbin"
prepend-path "$HOMEBREW_PREFIX/bin"
prepend-path "$HOMEBREW_PREFIX/lib/ruby/gems/3.1.0/bin"
prepend-path "$HOMEBREW_PREFIX/opt/python@3.13/libexec/bin"
prepend-path "$HOMEBREW_PREFIX/opt/ruby/bin"
prepend-path "$HOMEBREW_PREFIX/opt/qt/bin"
prepend-path "$HOMEBREW_PREFIX/opt/bison/bin" # for QGIS build
prepend-path "$HOME/local/bin"
prepend-path "$HOME/.local/bin"
prepend-path "$HOME/local/geotools/bin"
prepend-path "$HOME/local/oclint/bin"
prepend-path "$GOPATH/bin"
prepend-path "$HOME/.rd/bin"

# prepend-path "$HOME/dev/depot_tools"
# prepend-path "/usr/local/Cellar/asdf/0.7.2/bin"
# prepend-path "$HOME/.asdf/shims"
append-path  "$ANDROID_SDK_PATH/tools"
append-path  "$HOME/dev/sysadmin/bin"
append-path  "$HOMEBREW_PREFIX/share/npm/bin"
append-path  "$HOME/.cargo/bin"
append-path  "$HOME/anaconda3/bin"

# prepend-path "$HOMEBREW_PREFIX/opt/node@12/bin"
# append-path  "$DROPBOX_PATH/dev/depot_tools"

# source /usr/local/Cellar/asdf/0.7.2/asdf.sh

export HISTSIZE=100000000
export SAVEHIST=100000000
export CLICOLOR=1

# ctrl+n/p delete all-up-to and delete-all-after cursor
bindkey "^N" backward-kill-line
bindkey "^P" kill-line

autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

# turn off the annoying auto-correction
unsetopt correct_all

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/zac/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/zac/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/zac/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/zac/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<


# bun completions
[ -s "/Users/zac/.bun/_bun" ] && source "/Users/zac/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
