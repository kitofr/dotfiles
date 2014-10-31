# vim:ft=zsh ts=2 sw=2 sts=2

rvm_current() {
  rvm current 2>/dev/null
}

rbenv_version() {
  rbenv version 2>/dev/null | awk '{print $1}'
}

time_stamp() {
  date 2>/dev/null | awk '{print $2"-"$3,"@", $5}'
}

PROMPT='
%{$fg_bold[green]%}${$(basename $PWD)/#$~}%{$reset_color%}$(git_prompt_info) λ '

#echo -e "\ue0a0\ue0a1\ue0a2\ue0b0\ue0b1\ue0b2"
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}\ue0a0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ●"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

RPROMPT='%{$fg_bold[red]%}$(time_stamp)%{$reset_color%}'
