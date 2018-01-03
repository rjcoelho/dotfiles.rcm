# Dotfiles for [@rjcoelho](https://github.com/rjcoelho)

[![xkcd: Automation](http://imgs.xkcd.com/comics/automation.png)](http://xkcd.com/1319/)

## Requirements:

- Git
- [Rcm](https://github.com/thoughtbot/rcm)

## Install:
```
git clone --recursive https://github.com/rjcoelho/dotfiles.rcm ~/.dotfiles.rcm
cd ~/.dotfiles.rcm
rcup -d `pwd` -x README.md -x LICENSE
```

### Rcm:

Install (rcm)[https://github.com/thoughtbot/rcm] (non-OSX):
```
curl -LO https://thoughtbot.github.io/rcm/dist/rcm-1.3.0.tar.gz
tar -xvf rcm-1.3.0.tar.gz
cd rcm-1.3.0
./Configure && make && sudo make install
```

### [Vim](http://www.vim.org/):

To generate a new vimrc using [Vimbootstrap](http://vim-bootstrap.com):
```
curl 'http://vim-bootstrap.com/generate.vim' --data 'editor=vim' > ~/.vimrc
```

Update plugins:
```
vim +PlugInstall +qall
```

Cleanup/remove unused directories/plugins:
```
vim +PlugClean! +qall
```

To uninstall (vim distribution):
```
rm -rf ~/.vimrc ~/.vim
```

To check vim startup time:
```
vim --startuptime vim.log +qall
cat vim.log
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

Install xcode command line tools (needed by some brew formulas):
```
xcode-select --install
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

### [Python/pip](https://pip.pypa.io/en/stable/quickstart/)

On OSX install python2 and python3 using brew but don't override OSX's python. See [Homebrew and python](https://docs.brew.sh/Homebrew-and-Python.html).

On OSX use ```python2/3 -m pip```, on non-OSX use ```pip```.

Install python packages using pip:
```
python2 -m pip install -r ~/.config/python2/requirements.txt
python3 -m pip install -r ~/.config/python3/requirements.txt
```

Generate/Update packages using pip:
```
python2 -m pip freeze >! ~/.config/python2/requirements.txt
python3 -m pip freeze >! ~/.config/python3/requirements.txt
```

When updating python, pip/setuptools may beed to be updated:
```
python2 -m pip install --upgrade pip setuptools wheel
python3 -m pip install --upgrade pip setuptools wheel
```

## TODO
- Maybe replace autoenv by direnv (fish?)
- Review zsh plugins
    # https://github.com/Tarrasch/zsh-functional
    # https://github.com/unixorn/git-extra-commands

