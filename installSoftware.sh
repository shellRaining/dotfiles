#!/bin/zsh

# install software for terminal
sudo pacman -S zsh zsh-completions tmux alacritty neovim bat zoxide unzip git bat nerd-fonts-jetbrains-mono
sudo pacman -S xsel tree-sitter fd sed ripgrep stylua lazygit openssh

# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/tpm
# curl https://glados.rocks/tools/clash-linux.zip -o clash.zip
# curl https://update.glados-config.com/clash/167867/694165b/78993/glados-terminal.yaml > ~/.config/clash/config.yaml


# install desktop software
yay -S dingtalk-bin wechat jetbrains-toolbox wps-office
sudo pacman -S telegram-desktop
