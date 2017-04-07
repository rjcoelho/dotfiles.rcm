# Dotfiles for [@rjcoelho](https://github.com/rjcoelho)

[![xkcd: Automation](http://imgs.xkcd.com/comics/automation.png)](http://xkcd.com/1319/)

## Requirements:

- Git
- [Rcm](https://github.com/thoughtbot/rcm)

## Install:
```
git clone --recursive https://github.com/rjcoelho/dotfiles.rcm ~/.dotfiles.rcm
rcup -d ~/.dotfiles.rcm -x README.md -x LICENSE
```

### Rcm:

Install (rcm)[https://github.com/thoughtbot/rcm] (non-OSX):
```
curl -LO https://thoughtbot.github.io/rcm/dist/rcm-1.3.0.tar.gz
tar -xvf rcm-1.3.0.tar.gz
cd rcm-1.3.0
./Configure && make && sudo make install
```

### [Neovim](https://github.com/neovim/neovim):

Install neovim (non-OSX):
```
# non-osx
yum|apt-get neovim python2-neovim python-neovim

# osx (already on Brewfile)
pip install neovim --upgrade
pip3 install neovim --upgrade
```

To use your existing Vim configurations:
```
ln -sf ~/.vim ~/.config/nvim
ln -sf ~/.vimrc ~/.config/nvim/init.vim
```

### [Spacevim](https://github.com/liuchengxu/space-vim)

Install spacevim (vim distribution):
```
git clone https://github.com/liuchengxu/space-vim.git ~/.space-vim
ln -sf ~/.space-vim/init.vim ~/.vimrc
vim/nvim +PlugInstall +qall
```

Cleanup/remove unused directories/plugins:
```
vim/nvim +PlugClean! +qall
```

To uninstall (vim distribution):
```
rm -rf ~/.vimrc ~/.vim ~/.space-vim
```

To check vim startup time:
```
vim/nvim --startuptime vim.log +qall
cat vim.log
```

### Git-templates

Add aliases and templates:
```
git config --global include.path ~/.gitconfig.local
```

### [Ctags](http://ctags.sourceforge.net/)

Install ctags (non-OSX):
```
yum|apt-get|pacman ctags
```

Generate ```.git/tags``` on checkout [ctags with git](https://github.com/scottsbaldwin/effortless-ctags-with-git):
```
git config --global init.templatedir '~/.git_template'
cd <REPO>
echo "#!/bin/sh\n.git/hooks/ctags >/dev/null 2>&1 &" > .git/post_checkout
chmod +x .git/hooks/*
git init
```

Using [ctags in vim](https://andrew.stwrt.ca/posts/vim-ctags/)
```
:tag function_name
:set tags # show tags file used
```

### [Erlang/Kerl](https://github.com/kerl/kerl)

Install kerl (non-OSX):
```
sudo curl -s https://raw.githubusercontent.com/kerl/kerl/master/kerl -o /usr/local/bin/kerl
sudo chmod a+x /usr/local/bin/kerl
```

### [Fasd](https://github.com/clvv/fasd)

Install Fasd (non-OSX):
```
sudo curl -s https://raw.githubusercontent.com/clvv/fasd/master/fasd -o /usr/local/bin/fasd
sudo chmod +x /usr/local/bin/fasd
```

### [OSX/Brew](http://brew.sh/)

Install brew and bundles:
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap Homebrew/bundle
brew bundle --path=~/.config/brew/Brewfile
```

Upgrade brewfile:
```
brew bundle dump --file=~/.config/brew/Brewfile --force
```

### [Fzf](https://github.com/junegunn/fzf)

Install (fzf (non-OSX):
```
sudo git clone --depth 1 https://github.com/junegunn/fzf.git /usr/local/opt/fzf
sudo /usr/local/opt/fzf/install --key-bindings --completion --no-update-rc
```

### [VSCode](https://github.com/Microsoft/vscode)

Install VSCode user settings and extensions:
```
if [[ "$OSTYPE" == darwin* ]]; then
    ln -sf $HOME/.config/Code/User/*.json "$HOME/Library/Application Support/Code/User"
fi
```

### [Spacemacs](http://spacemacs.org/)

Install spacemacs (emacs distribution):
```
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

## TODO
- Maybe drop prezto (anti-pattern)
- Maybr drop space-vim (anti-pattern)
- Maybe replace autoenv by direnv (fish?)
