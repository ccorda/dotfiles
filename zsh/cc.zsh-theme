# Prompt

function prompt_char {
  git branch >/dev/null 2>/dev/null && echo '±' && return
  hg root >/dev/null 2>/dev/null && echo '☿' && return
  echo '○'
}

# Make Git Information Available
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() {
    vcs_info
}

function vcs_info_wrapper() {
  vcs_info
  if [ -n "$vcs_info_msg_0_" ]; then
    echo "%{$fg[green]%}${vcs_info_msg_0_}%{$reset_color%}$del"
  fi
}

function get_pwd() {
  print -D $PWD
}

function precmd() {
print -rP '
$fg[cyan]%m: $fg[yellow]$(get_pwd)'
}

PROMPT='%{$reset_color%}→ '
RPROMPT='$(vcs_info_wrapper)'

# ZSH_THEME_GIT_PROMPT_PREFIX="[git:"
# ZSH_THEME_GIT_PROMPT_SUFFIX="]$reset_color"
# ZSH_THEME_GIT_PROMPT_DIRTY="$fg[red]+"
# ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"