#!/bin/sh
echo "Running apt update"
sudo apt-get update

echo "Installing bat"
sudo apt-get install -y bat

echo "Installing zsh"
sudo apt-get install -y zsh
zsh --version

echo "Installing oh-my-zsh"
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Changing default shell to zsh"
chsh -s /usr/bin/zsh codespace

echo "Installing zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "Installing zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
