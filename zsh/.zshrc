# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$HOME:$PATH"
fi
export PATH

eval "$(starship init zsh)"