# History
# ===============================
HISTSIZE=1000
HISTFILESIZE=2000
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY

# Options
# ===============================
setopt AUTO_CD  # change directory just by typing its name
setopt INTERACTIVE_COMMENTS  # allows comments in interactive shell

# Scripts
# ===============================
source $HOMEBREW_PREFIX/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh 2>/dev/null 
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source $HOMEBREW_PREFIX/share/zsh-history-substring-search/zsh-history-substring-search.zsh 2>/dev/null
source $HOMEBREW_PREFIX/opt/zsh-git-prompt/zshrc.sh 2>/dev/null

# Prompt
# ===============================
PS1='%F{blue}%~ %F{red}%#%f '
RPROMPT='$(if [ "$__CURRENT_GIT_STATUS" != ": 0 0 0 0 0 0" ]; then; git_super_status; fi)'

# Brew zsh-completions
# ===============================
FPATH=$HOMEBREW_PREFIX/share/zsh-completions:$HOMEBREW_PREFIX/share/zsh/site-functions:$HOMEBREW_PREFIX/share/zsh/functions:$FPATH
autoload -Uz compinit && compinit

# Environment Variables
# ===============================
export CLICOLOR=1
export EDITOR=nvim
export HOSTNAME=mba
export PF_INFO="ascii title os editor shell pkgs cpu memory palette"

# Aliases
# ===============================
#nvim
# ===============
alias vi=nvim
alias vim=nvim

# navigation
# ===============
alias ..='cd ..'

# listing
# ===============
alias la='ls -AGh'
alias lla='ls -lAGh'
alias ll='ls -lGh'

# clear screen
# ===============
alias cl='clear'

# git shortcuts
# ===============
alias g=git
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git pull'
alias gl='git log'

# general utilities
# ===============
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# zsh reload & resource
# ===============
alias zshconfig="nvim ~/.config/zsh/.zshrc"
alias zshreload="source ~/.config/zsh/.zshrc"

# safety net
# ===============
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

# disk usage
# ===============
alias du='du -ch'

# history
# ===============
alias h='history'

# history
# ===============
alias k='kubectl'

# processes
# ===============
alias top='htop'  # if you have `htop` installed

# python
# ===============
alias python=python3
alias py=python3
alias pip=pip3

# terminal
# ===============
alias q=exit

# apps
# ===============
alias discord='open /Applications/Discord.app'
alias spotify='open /Applications/Spotify.app'
alias safari='open /Applications/Safari.app'
alias steam='open /Applications/Steam.app'

# Conda
# ===============================
eval "$(conda "shell.$(basename "${SHELL}")" hook)"

# Startup Commands
# ===============================
cd ~
pfetch

