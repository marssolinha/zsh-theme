local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
local ret_status_before="%(?:%{$fg_bold[green]%}❯%{$fg_bold[blue]%}❯%{$fg_bold[cyan]%}❯ :%{$fg_bold[red]%}❯%{$fg_bold[yellow]%}❯%{$fg_bold[magenta]%}❯ )"

#PROMPT='%{$fg_bold[blue]%}%m:(%{$fg[cyan]%}%~%u%{$fg_bold[blue]%})%{$reset_color%} $(git_prompt_info)${ret_status}%{$reset_color%}'

#PROMPT='${ret_status_before}%{$fg_bold[blue]%}%m:%{$fg[cyan]%}%~%u$(git_prompt_info)%{$reset_color%} ${ret_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✓"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[blue]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

PROMPT='${ret_status_before}%{$fg_bold[blue]%}%m:%{$fg[cyan]%}%~%u%{$reset_color%} ${ret_status}%{$reset_color%}'
RPROMPT='${return_status}$(git_prompt_info)$(git_prompt_status)%{$reset_color%}'
