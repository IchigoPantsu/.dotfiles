#bin/bash
has() {
  type "$1" > /dev/null 2>&1
}

for cmd in "curl" "git" 
do
  if has ${cmd}; then
      echo "${cmd} is installed"
    else
      echo "${cmd} is not installed. We need ${cmd}"
      exit 1
  fi
done


# download dotfiles 
cd ${HOME}

DOT_DIRECTORY="${HOME}/.dotfiles"
DOT_TARBALL="https://github.com/IchigoPantsu/dotfiles/tarball/master"
REMOTE_URL="https://github.com/IchigoPantsu/dotfiles.git"

git clone --recursive "${REMOTE_URL}" "${DOT_DIRECTORY}"


# https://brew.sh/
echo ======linux brew install=======
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
test -r ~/.bash_profile && echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bash_profile
echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.profile

# install brewfile
brew install ~/.dotfiles/Brewfile


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
