files=( gitconfig pryrc gemrc alias zshrc)
  
for filename in ${files[@]}
do
  [[ -s $HOME/.$filename ]] && rm $HOME/.$filename
  ln -sf $PWD/$filename ~/.$filename
done

source ~/.zshrc
