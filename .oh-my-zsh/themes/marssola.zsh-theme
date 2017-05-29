local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
#PROMPT='%{$fg_bold[blue]%}%m:(%{$fg[cyan]%}%~%u%{$fg_bold[blue]%})%{$reset_color%} $(git_prompt_info)${ret_status}%{$reset_color%}'

PROMPT='%{$fg_bold[blue]%}%m:%{$fg[cyan]%}%~%u$(git_prompt_info)%{$reset_color%} ${ret_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ✗%{$fg[blue]%})"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✓%{$fg[blue]%})"
