DOT_DIRECTORY="."

for f in .??*
do
  # 無視したいファイルやディレクトリを追加
  [[ ${f} = ".git" ]] && continue
  [[ ${f} = ".gitignore" ]] && continue
  [[ "$f" == ".DS_Store" ]] && continue
  ln -snfv ${PWD}/${f} ${HOME}/${f}
done
echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)

ln -snfv ${PWD}/atom/config.cson    ${HOME}/.atom/config.cson
ln -snfv ${PWD}/atom/init.coffee    ${HOME}/.atom/init.coffee
ln -snfv ${PWD}/atom/keymap.cson    ${HOME}/.atom/keymap.cson
ln -snfv ${PWD}/atom/snippets.cson  ${HOME}/.atom/snippets.cson
ln -snfv ${PWD}/atom/styles.less    ${HOME}/.atom/styles.less

echo $(tput setaf 2)Deploy atom dotfiles complete!. ✔︎$(tput sgr0)
