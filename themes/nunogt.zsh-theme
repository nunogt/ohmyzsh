function prompt_char {
    if [ $UID -eq 0 ]; then echo "#"; else echo $; fi
}

function chpwd() {
    ls -lrt
}

PROMPT='%{$fg_bold[blue]%}%* %{$fg_bold[red]%}%n@%m %{$fg_bold[cyan]%}%(!.%1~.%~) $(git_prompt_info)$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=") "
ZSH_THEME_TERM_TAB_TITLE_IDLE="%n@%m: %15<..<%~%<<" #15 char left truncated PWD
ZSH_THEME_TERM_TITLE_IDLE="%n@%m: %~"
