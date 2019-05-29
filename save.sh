#/bin/bash

cp -R ~/.vim ~/linuxEnv/vim
cp ~/.vimrc ~/linuxEnv/vimrc

find ~/linuxEnv/vim -name .git -exec rm -rf {} \;

