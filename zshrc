setopt AUTO_CD
setopt NO_CASE_GLOB

# history settings
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
HISTSIZE=100000000
SAVEHIST=100000000
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

# search in history
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

autoload -Uz compinit && compinit

export CLICOLOR=1

eval "$(starship init zsh)"
