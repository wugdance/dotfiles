# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

# shell prompt variable
PS1="%1~ $ "

# Autosuggestions
source ~/.zsh/.zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# colorful ls
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'

# colorful grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# better vi mode
source ~/.zsh/.zsh-vi-mode/zsh-vi-mode.zsh

# --- Next plugins have strict order ---

# zsh-completions
fpath=(~/.zsh/.zsh-completions/src $fpath)
autoload -Uz compinit
compinit

# enable colored completion menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# completeion caching
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path ~/.zsh/cache

# make `Tab` more predictable and user-friendly
bindkey '^I' expand-or-complete

# Syntax highlighting
source ~/.zsh/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# history search feature
source ~/.zsh/.zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER="nvim +Man!"
