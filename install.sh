#!/bin/bash
# installer script for project_zebu vim config

### WARNING, work in progress, do not use

# vars
BUNDLE_PATH="$HOME/.vim/bundle"
ZEBU="$HOME/.project_zebu"


# verify ~/.vim/bundles exists
if [ ! -d "$BUNDLE_PATH" ]; then
    echo $BUNDLE_PATH
    mkdir -p "$BUNDLE_PATH"
fi

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git "$BUNDLE_PATH/Vundle.vim"

# verify ~/.project_zebu exists
if [ ! -d "$ZEBU" ]; then
    echo $ZEBU
    mkdir -p "$ZEBU"
fi

# clone the project itself
git clone https://github.com/ryantownshend/project_zebu.git "$ZEBU"

# plant the symlinks in home dir
ln -s "$ZEBU/.vimrc" "$HOME/.vimrc"
ln -s "$ZEBU/.vimrc.bundles" "$HOME/.vimrc.bundles"

# run Vundle plugin installs
vim +PluginInstall +qall

