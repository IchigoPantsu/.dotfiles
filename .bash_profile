
# source ~/profile if it exists
if [ -f "$HOME/.profile" ] ; then
  . $HOME/.profile
fi

# if running bash
    # include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  . $HOME/.bashrc
fi



pacman -Qqen > ~/.dotfiles/bin/pacman_pkg.txt
yay -Qqen > ~/.dotfiles/bin/yay_pkg.txt

#setxkbmap -option ctrl:nocaps
#xmodmap ~/.Xmodmap
#xmodmap -e "remove shift = BackSpace"
#xset r 62

#xkbcomp -i 10 ~/.my_custom.xkb $DISPLAY
#setxkbmap -option ctrl:nocaps
#xmodmap -e "remove shift = BackSpace"
#xset r 62

#xkbcomp .default.xkb $DISPLAY
#xkbcomp -i `xinput | grep "HAILUCK CO.,LTD USB KEYBOARD  " | grep -o "id=[0-9]*" | sed s/id=//` ~/.my_custom.xkb $DISPLAY
#xmodmap -e "remove shift = BackSpace"


source "$HOME/.cargo/env"
