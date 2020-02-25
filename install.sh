#!/bin/bash
files=( gitconfig hyper.js )
for filename in ${files[@]}
do
  [[ -s $HOME/.$filename ]] && rm $HOME/.$filename
  ln -sf $PWD/$filename ~/.$filename
done
source ~/.bashrc
