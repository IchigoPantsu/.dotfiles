#!/bin/sh

DOT_DIRECTORY="${HOME}/.dotfiles"
cd ${DOT_DIRECTORY}

#link in ${HOME}
for f in .??*
do
  # 無視したいファイルやディレクトリはこんな風に追加してね
  [[ ${f} = .git ]] && continue
  [[ ${f} = .gitignore ]] && continue
  [[ ${f} = .gitmodules ]] && continue
  [[ ${f} = .swp ]] && continue
  [[ ${f} = .config ]] && continue

  ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done

#link in ${HOME}/.config

if [ ! -d "$HOME/.config" ]; then
  mkdir "$HOME/.config"
fi

DOT_CONFIG_DIRECTORY="${HOME}/.dotfiles/.config"
cd ${DOT_CONFIG_DIRECTORY}
for f in ??*
do
  ln -snfv ${DOT_CONFIG_DIRECTORY}/${f} ${HOME}/.config/${f}
done


echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)
