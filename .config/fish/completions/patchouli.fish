# ~/.config/fish/completions/patchouli.fish

# Basic command completions
complete -c patchouli -f -a "diff patch" -d "Basic commands"

# Options
complete -c patchouli -s h -l help -d "Show help message"
complete -c patchouli -s v -l --version -d "Show version"
