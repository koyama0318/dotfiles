# PATH settings
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$HOME:$PATH"
fi

export PATH

# alias
alias ea="eza -a --icons --git"
alias et="eza -T -L 3 -a -I 'node_modules|.git|.cache' --icons"

eval "$(starship init zsh)"