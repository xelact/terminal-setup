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
