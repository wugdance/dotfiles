#---------------------- History & vi mode -----------------------------
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt INC_APPEND_HISTORY

bindkey -v

#------------------------- Other Options ------------------------------
setopt NO_BEEP

#------------------------- Environment --------------------------------
export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER="nvim +Man!"

#-------------------------- Prompt ------------------------------------
autoload -Uz colors && colors
PS1="%{$fg[cyan]%}%1~%{$reset_color%} $ "

#-------------------------- Aliases -----------------------------------
alias vim='nvim'
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#-------------------------- Plugins -----------------------------------
source ~/.zsh/zsh-vi-mode/zsh-vi-mode.zsh

fpath=(~/.zsh/zsh-completions/src $fpath)
autoload -Uz compinit
compinit

# enable colored completion menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'  # Case-insensitive completion

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
bindkey '^y' autosuggest-accept

source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]='none'
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
