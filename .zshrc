# fzf
source <(fzf --zsh)

# Var
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

unsetopt beep
zstyle :compinstall filename '/home/ryan/.zshrc'
setopt APPEND_HISTORY;
setopt EXTENDED_HISTORY;
setopt extendedglob
autoload -Uz compinit
compinit

# Zsh plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-abbr/zsh-abbr.zsh
zstyle ":completion:*:commands" rehash 1

# Custom Aliases
alias grep="grep --color=auto"
alias ..="cd .."
alias ls="eza --icons=always"
alias hx="helix"
# Defaults

# Paths (SWITCHED TO SOFT SYMLINKS FROM BUILD DIR TO /usr/bin)
export SCRIPTS_DIR="$HOME/Documents/scripts"
export PATH="$PATH:$SCRIPTS_DIR"

# Env
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
