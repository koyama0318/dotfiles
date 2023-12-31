
## pre-install

make
chsh -s /bin/zsh

'''
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo dnf install -y alacritty

# use in packer
sudo dnf install python
# nvim Packer
git clone https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/opt/packer.nvim

'''

sudo dnf install -y zsh
sudo dnf install -y neovim
sudo dnf install -y neofetch


	chmod +x ./scripts/make_symlink.sh
	zsh ./scripts/make_symlink.sh




	chmod -R u+rX ~/.config/nvim


## 参考

https://zenn.dev/yano/articles/neovim_frontend_development_2022


## TODO

[ ] nvim https://zenn.dev/yano/articles/neovim_frontend_development_2022
	[]gruvbox-material
	[]nvim-treesitter
	[]mason.nvim
		[]mason-lsconfig.nvim
		[]null-ls.nvim
		[]mason-null-ls.nvim
	[]nvim-cmp
		[] lspkind-nvim
	[]telescope.nvim
	[]lspsaga.nvim
	[]dressing.nvim


[ ] zsh
	[]alias
	[]git branch
[ ] fzf
