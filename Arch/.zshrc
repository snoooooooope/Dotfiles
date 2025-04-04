#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# fzf
source <(fzf --zsh)

# z.lua
eval "$(lua ~/Build/z.lua/z.lua --init zsh enhanced once fzf)"

# Zellij
export ZELLIJ_AUTO_EXIT=false;
export ZELLIJ_AUTO_ATTACH=true;
eval "$(zellij setup --generate-auto-start zsh)"

# Zsh plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
zstyle ":completion:*:commands" rehash 1


#setopt
setopt APPEND_HISTORY;
setopt EXTENDED_HISTORY;
autoload -Uz compinit
compinit

# Custom Aliases
alias ls="ls --color=auto"
alias rg="rg --color=auto"
alias grep="grep --color=auto"
alias mirrorupdate="sudo systemctl start reflector.service"
alias reflectorstatus="journalctl -u reflector.service -b"
alias ..="cd .."
alias clean="paru -Scc"
alias hx="helix"
alias hp="wpctl set-default 78"
alias sp="wpctl set-default 51"
alias depcheck="pacman -Qdt"
alias depclean="sudo pacman -Qdtq | sudo pacman -Rns -"
alias pakin="pacman -Q | wc -l"
alias font-family="fc-list : family | sort | uniq"
alias zrt="zellij action rename-tab"
alias zrp="zellij action rename-pane"

# Env
eval "$(starship init zsh)"

# Paths
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/Build/zig

# Defaults
export EDITOR=nvim;
export TERMINAL=kitty;
# export TERM=kitty;
# export VISUAL=helix;
export MANPAGER="sh -c 'col -bx | bat -l man -p'";
export MANROFFOPT="-c";
