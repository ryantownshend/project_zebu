# installer script for project_zebu vim config

### WARNING, work in progress, do not use

# vars
bundle_path="~/.vim/bundle"
zebu="~/.project_zebu"


# verify ~/.vim/bundles exists
if [ ! -e "$bundle_path" ]; then
    mkdir -p "$bundle_path"
fi

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git $bundle_path/Vundle.vim

# clone the project itself
git clone https://github.com/ryantownshend/project_zebu.git $zebu

# plant the symlinks in home dir
ln -s .project_zebu/.vimrc ~/.vimrc
ln -s .project_zebu/.vimrc.bundles ~/.vimrc.bundles

# run Vundle plugin installs
vim +PluginInstall +qall
