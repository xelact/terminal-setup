# Terminal-setup

In Linux:

```
cd
git clone https://github.com/xelact/vim-config.git .vim/vim-config/
git clone https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim
ln -s .vim/vim-config/dotvim .vimrc
```

Then into vim you have to install the plugins with `:PluginInstall`

## Installing fonts for powerline:
```
cd
git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
```

After installing them you have to select the powerline font in your terminal.

## Oh my ZSH


```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd
ln -s .vim/vim-config/dotzsh .zshrc
```

## Tmux

```
cd
ln -s .vim/vim-config/dottmux .tmux.conf
``

## GIT

Some useful git configs:

```sh
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

```
