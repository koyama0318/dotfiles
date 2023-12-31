
## pre-install

make
chsh -s /bin/zsh

'''
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo dnf install -y alacritty


'''

sudo dnf install -y zsh
sudo dnf install -y neovim
sudo dnf install -y neofetch


	chmod +x ./scripts/make_symlink.sh
	zsh ./scripts/make_symlink.sh