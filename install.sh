#!/bin/bash
files=( gitconfig hyper.js pryrc gemrc)
  
for filename in ${files[@]}
do
  [[ -s $HOME/.$filename ]] && rm $HOME/.$filename
  ln -sf $PWD/$filename ~/.$filename
done
source ~/.bashrc
