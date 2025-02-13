
function get_ruby_version() {
  echo $(echo `ruby -v` | sed -e 's/\[[^][]*\]//g' | sed -e 's/([^()]*)//g')
}

function get_node_version() {
  echo $(node -v | sed -e 's/v//')
}

function get_python_version() {
  echo $(python --version 2>&1 | sed -e 's/Python/python/')
}

PROMPT='%{$fg[blue]%}➜  %{$fg[cyan]%}${PWD/#$HOME/~}%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'
# RPROMPT='%{$fg[yellow]%}[ %{$fg[cyan]%}node $(get_node_version) %{$fg[yellow]%}][ %{$fg[red]%}$(get_ruby_version) %{$fg[yellow]%}]%{$reset_color%}'
RPROMPT=''
ZSH_THEME_GIT_PROMPT_PREFIX=" (%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg_bold[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg_bold[cyan]%}✓%{$reset_color%}"
