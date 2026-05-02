# Dotfiles

- [zsh](https://github.com/zsh-users/zsh)
- [zinit](https://github.com/zdharma-continuum/zinit)

- [Ghostty](https://github.com/ghostty-org/ghostty)
- [starship](https://github.com/starship/starship)
- [tmux](https://github.com/tmux/tmux)

- [Claude Code](https://github.com/anthropics/claude-code)

- [fzf](https://github.com/junegunn/fzf)
- [eza](https://github.com/eza-community/eza)
- [tree](https://github.com/kddnewton/tree)

## install

```sh
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

brew install starship
brew install tmux

brew install eza
brew install fzf
brew install tree

brew install gh

brew install --cask font-hack-nerd-font
```

## setting files

| tool        | path                                                        |
| ----------- | ----------------------------------------------------------- |
| zsh         | `~/.zshrc`                                                  |
| git         | `~/.gitconfig`                                              |
| git         | `~/.gitignore_global`                                       |
| ghostty     | `~/.config/ghostty/config`                                  |
| starship    | `~/.config/starship.toml`                                   |
| vscode      | `~/Library/Application\ Support/Code/User/settings.json`    |
| vscode      | `~/Library/Application\ Support/Code/User/keybindings.json` |
| vim         | `~/Library/Application\ Support/Code/User/settings.json`    |
| tmux        | `~/.tmux.conf`                                              |
| claude code | `~/.claude/settings.json`                                   |
| claude code | `~/.claude/statusline-command.sh`                           |
