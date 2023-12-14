# Declare editor
export EDITOR=/usr/bin/nvim
# Ensure global yarn packages are added to path
export PATH=~/.yarn/bin:$PATH
# Ensure cargo binaries are added to path
export PATH=~/.cargo/bin:$PATH
# To force gpg to use tty
export GPG_TTY=$(tty)

# Alias for easier justfile interaction
alias mj="just --justfile ~/.user.justfile --working-directory ."
alias j="just"

alias ls="eza"
alias la="eza -la"
alias c="clear"

# Enable completions for bash
autoload -U +X bashcompinit && bashcompinit

# Load starship prompt
eval "$(starship init zsh)"
# Autin shell completion
eval "$(atuin init zsh)"
# Zoxide shell completion
eval "$(zoxide init zsh --cmd cd)"
# Enable zsh ghost text completion
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Enable nvm
source /usr/share/nvm/init-nvm.sh
# Set default node version to use
nvm install 18 && nvm use 18
# Keep this as last line
neofetch
