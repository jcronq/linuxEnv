#/bin/bash

echo "Override your ~/.vim directory? (y/n)"
read override_vimdir
if [[ "$override_vimdir" == "y" ]]; then
    cp -R vim ~/.vim
fi

echo "Override your ~/.vimrc file? (y/n)"
read override_vimrc
if [[ "$override_vimrc" == "y" ]]; then
    cp vimrc ~/.vimrc
fi

echo "Override your ~/.profile file? (y/n)"
read override_profile
if [[ "$override_vimrc" == "y" ]]; then
    cp profile ~/.profile
fi
