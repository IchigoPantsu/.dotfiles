# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/include" ] ; then
    PATH="$HOME/.local/include:$PATH"
fi

#for type japanese 
export QT_QPA_PLATFORMTHEME="qt5ct"
#export EDITOR=/usr/bin/nano
export EDITOR=/usr/bin/nvim
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
# fix "xdg-open fork-bomb" export your preferred browser from here
#export BROWSER=/usr/bin/palemoon
export BROWSER=/usr/bin/qutebrowser

export TERMINAL=/usr/bin/alacritty

### via bash_profile
#eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
export __GL_SHADER_DISK_CACHE=0

# source this file into an existing shell.
VULKAN_SDK="$HOME/Workspace/vulkan/1.2.135.0/x86_64"
export VULKAN_SDK
PATH="$VULKAN_SDK/bin:$PATH"
export PATH
LD_LIBRARY_PATH="$VULKAN_SDK/lib:${LD_LIBRARY_PATH:-}"
export LD_LIBRARY_PATH
VK_LAYER_PATH="$VULKAN_SDK/etc/vulkan/explicit_layer.d"
export VK_LAYER_PATH


source "$HOME/.cargo/env"
