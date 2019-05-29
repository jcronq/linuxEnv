#/bin/bash

echo "Save your .vim dir? (y/n)"
read save_vimdir
if [[ "$save_vimdir" == "y" ]]; then
    cp -R ~/.vim ~/linuxEnv/vim
fi

echo "Save your .vimrc? (y/n)"
read save_vimrc
if [[ "$save_vimrc" == "y" ]]; then
    cp ~/.vimrc ~/linuxEnv/vimrc
fi

echo "Save your .profile? (y/n)"
read save_profile
if [[ "$save_profile" == "y" ]]; then
    cp ~/.profile ~/linuxEnv/profile
fi

find ~/linuxEnv/vim -name .git -exec rm -rf {} \;

