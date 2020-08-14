files=( gitconfig gitignore_global pryrc gemrc alias zshrc vimrc tigrc)

for filename in ${files[@]}
do
  [[ -s $HOME/.$filename ]] && rm $HOME/.$filename
  ln -sf $PWD/$filename ~/.$filename
done

source ~/.zshrc
