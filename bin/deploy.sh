
DOT_DIRECTORY="${HOME}/.dotfiles"
cd ${DOT_DIRECTORY}

for f in .??*
do
  # 無視したいファイルやディレクトリはこんな風に追加してね
  [[ ${f} = ".git" ]] && continue
  [[ ${f} = ".gitignore" ]] && continue
  [[ ${f} = ".gitmodule" ]] && contilnue
  [[ ${f} = ".swp" ]] && contilnue
  [[ ${f} = "README.md"]] && contilnue

  ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done
echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)
