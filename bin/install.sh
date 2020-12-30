#bin/bash

# https://brew.sh/
#echo ======linux brew install=======
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

#test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
#test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
#test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
#echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# install brewfile
#brew bundle --global

# install bash-powerline
echo ======install bash-powerline======
curl https://raw.githubusercontent.com/riobard/bash-powerline/master/bash-powerline.sh > ~/.bash-powerline.sh

#install Powerline fonts
echo ======install Powerline fonts======
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
#cd ..
#rm -rf fonts

#
#echo after you should manually install alacritty.
#echo refer: https://github.com/alacritty/alacritty
#echo and set default terminal emulater.
#echo type if ubuntu: sudo update-alternatives --config x-terminal-emulator

# https://github.com/neovim/neovim
#echo ======install neovim/neovim======
#curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
#chmod u+x nvim.appimage
#mv ./nvim.appimage ~/bin/nvim
#./nvim

# https://github.com/Shougo/dein.vim
#echo ======install Shogo/dein======
#curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
### For example, we just use `~/.cache/dein` as installation directory
#sh ./installer.sh ~/.cache/dein

# https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otfhttps://github.com/neovim/neovim
#echo ======install Nerdfonts======
#mkdir -p ~/.local/share/fonts
#curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
#mv ./'Droid Sans Mono for Powerline Nerd Font Complete.otf' ~/.local/share/fonts


##################################################

#sudo pacman -Syu
#sudo pacman -S yay

###Manjaro i3 Editionインストールから僕おすすめカスタマイズまで
###https://qiita.com/Hiroya_W/items/99c73dd29e88762b2d5c
#sudo pacman -S ntp
#sudo timedatectl set-ntp true

#sudo pacman -S xdg-user-dirs-gtk
#LANG=C xdg-user-dirs-gtk-update

#sudo pacman -S fcitx-im fcitx-configtool fcitx-mozc fcitx-gtk2 fcitx-gtk3 fcitx-qt5

#sudo pacman -S adobe-source-han-sans-jp-fonts

#sudo pacman -S rofi

#utility
#sudo pacman -S neovim
#sudo pacman -S fzf
#sudo pacman -S ripgrep
#sudo pacman -S bat
#sudo pacman -S exa
#sudo pacman -S fd

#sudo pacman -S install firefox

#sudo pacman -S screenkey
#yay -S xkeysnail

#sudo pacman -S alacritty
#sudo pacman -S cmus

sudo pacman -S Syu
sudo pacman -S $(< pacman_pkg.txt)
LANG=C xdg-user-dirs-gtk-update

yay -Syu
yay -S (< yay_pkg.txt)

