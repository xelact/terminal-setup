#!/usr/bin/env bash

# VIM
#####

if command -v vim &> /dev/null
then

    if [ ! -f ~/.vim/bundle/Vundle.vim ]
    then
        git clone https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim
    fi

    if [ ! -f ~/.vimrc ]
    then
        ln -s ~/terminal-setup/dotvim ~/.vimrc
    else
        read -p "Do you want to update .vimrc? " -n 1 -r
        echo    # move to a new line
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
            rm ~/.vimrc
            ln -s ~/terminal-setup/dotvim ~/.vimrc
        fi
    fi

    # installing plugins
    vim -c 'PluginInstall' -c 'qa!'
else
    echo -e "\033[01;93m Vim not installed \033[00m"
fi

# TMUX
######

if command -v tmux &> /dev/null
then
    if [ ! -f ~/.tmux.conf ]
    then
        ln -s ~/terminal-setup/dottmux ~/.tmux.conf
    else
        read -p "Do you want to update .tmux.conf? " -n 1 -r
        echo    # move to a new line
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
            rm ~/.tmux.conf
            ln -s ~/terminal-setup/dottmux ~/.tmux.conf
        fi
    fi

    if [ ! -f ~/.tmux/plugins/tpm ]
    then
        git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    fi

    # installing plugins
    ~/.tmux/plugins/tpm/scripts/install_plugins.sh
else
    echo -e "\033[01;93m Tmux not installed \033[00m"
fi

# GIT
#####

git config --global core.editor vim
#git diff with vim
git config --global diff.tool vimdiff
git config --global difftool.prompt false
git config --global alias.d difftool

#useful alias
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.ci "commit --verbose"
git config --global alias.aa "add --all"
git config --global alias.di diff
git config --global alias.dc "diff --cached"
git config --global alias.ammend "commit --amend"
git config --global alias.l "log --graph --pretty=tformat:'%C(yellow)%h %C(auto,green)%cd %C(cyan)<%an> %C(red)%d%Creset %s' --date=short"
