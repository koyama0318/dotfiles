# 設定
export ZINIT_HOME="$HOME/.zinit/bin"
if [[ -f "${ZINIT_HOME}/zinit.zsh" ]]; then
  source "${ZINIT_HOME}/zinit.zsh"

  # プラグイン群
  zinit light zsh-users/zsh-autosuggestions
  zinit light zsh-users/zsh-syntax-highlighting
  zinit light Aloxaf/fzf-tab
  zinit light djui/alias-tips
  zinit light zsh-users/zsh-completions
fi

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

# エイリアス
alias cc='clear'
alias cl="claude"
alias els="eza -T -L 3 -a -I 'node_modules|.git|.cache' --icons"

alias tmka="tmux kill-server"
alias tma="tmux attach -t"
