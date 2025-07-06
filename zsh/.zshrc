# 設定
export ZINIT_HOME="${ZDOTDIR:-$HOME}/.zinit"
source "${ZINIT_HOME}/bin/zinit.zsh"

# プラグイン群
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light Aloxaf/fzf-tab
zinit light djui/alias-tips
zinit light zsh-users/zsh-completions
zinit light rupa/z

# starship prompt
eval "$(starship init zsh)"

# 補完・パスなど
autoload -Uz compinit && compinit
setopt prompt_subst
export PATH="$HOME/.local/bin:$HOME/bin:$PATH"

# zsh補助設定
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# asdf
if [ -d "$HOME/.asdf" ]; then
  if [ -f "$HOME/.asdf/asdf.sh" ]; then
    source "$HOME/.asdf/asdf.sh"
  fi
  if [ -f "$HOME/.asdf/completions/asdf.bash" ]; then
    source "$HOME/.asdf/completions/asdf.bash"
  fi
fi
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# エイリアス
alias dtf='nvim ~/dotfiles'

alias lg='lazygit'
alias cc='clear'
alias nv="nvim ."
alias cl="claude"
alias els="eza -T -L 3 -a -I 'node_modules|.git|.cache' --icons"
