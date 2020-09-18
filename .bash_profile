
# source ~/profile if it exists
if [ -f "$HOME/.profile" ] ; then
  . $HOME/.profile
fi

# if running bash
    # include .bashrc if it exists
if [ -f "$HOME/.bashrc" ]; then
  . $HOME/.bashrc
fi

export PATH="$HOME/.cargo/bin:$PATH"
