files=(gitconfig gitignore_global pryrc gemrc alias zshrc vimrc tigrc)

binaries=(git-clear)

for filename in ${files[@]}
do
  [[ -s $HOME/.$filename ]] && rm $HOME/.$filename
  ln -sf $PWD/$filename ~/.$filename
done

for binary in ${binaries[@]}
do
  [[ -s $HOME/.bin/$binary ]] && rm $HOME/.bin/$binary
  ln -sf $PWD/$binary ~/.bin/$binary
done

source ~/.zshrc
