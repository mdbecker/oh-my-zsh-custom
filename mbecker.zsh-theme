#Customized git status, oh-my-zsh currently does not allow render dirty status before branch
git_custom_status() {
  local cb=$(current_branch)
  if [ -n "$cb" ]; then
    echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

R=$fg_bold[red]
RESET=$reset_color
local return_code="%(?..%{$R%}%?%{$RESET%})"

PROMPT='%{$fg_bold[green]%}[%{$fg[cyan]%}%p%c%{$fg[green]%}] % %{$RESET%}'
RPROMPT='%{$RESET%}${return_code}%{$fg_bold[cyan]%}%p$(git_custom_status)%{$RESET%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}{%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[green]%}}%{$RESET%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}⚡%{$RESET%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$RESET%}"
