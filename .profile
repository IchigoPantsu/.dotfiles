#!/bin/sh
# make default editor Neovim
export EDITOR=nvim

# Most pure GTK3 apps use wayland by default, but some,
# like Firefox, need the backend to be explicitely selected.
export MOZ_ENABLE_WAYLAND=1
export MOZ_DBUS_REMOTE=1
export GTK_CSD=0

# qt wayland
export QT_QPA_PLATFORM="wayland"
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_WAYLAND_DISABLE_WINDOWDECORATION="1"

#Java XWayland blank screens fix
export _JAVA_AWT_WM_NONREPARENTING=1

# set default shell and terminal
export SHELL=/usr/bin/zsh
export TERMINAL_COMMAND=/usr/share/sway/scripts/foot.sh

# add default location for zeit.db
export ZEIT_DB=~/.config/zeit.db

# Disable hardware cursors. This might fix issues with
# disappearing cursors
export WLR_NO_HARDWARE_CURSORS=1

set -a
source $HOME/.config/user-dirs.dirs
set +a

if [ -n "$(ls $HOME/.config/profile.d 2>/dev/null)" ]; then
    for f in $HOME/.config/profile.d/*; do
        source $f
    done
fi

export GLYPH_DESKTOP="󰄶 "
export GLYPH_COMMAND="󰆍 "

# fcitx(japanese)  
export LC_CTYPE=ja_JP.utf-8

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx

#[Bashでコマンドの存在チェック - LESS IS MORE]
#(http://r9y9.github.io/blog/2013/08/12/bash-check-commend-existence/)
if type key-mapper-control &> /dev/null # 2>&1
then
    key-mapper-control --command autoload &> /dev/null 
fi

#for emsdk
#source "/usr/lib/emsdk/emsdk_env.sh"
#
# https://stackoverflow.com/questions/73575955/pytorch-hiperrornobinaryforgpu-unable-to-find-code-object-for-all-current-devi
export HSA_OVERRIDE_GFX_VERSION=10.3.0

