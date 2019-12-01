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
vim +PlugUpgrade +PlugUpdate +qall
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

Install neovim:
```
# non-OSX
yum|apt-get|pacman -S neovim python2-neovim python-neovim

# OSX
brew install neovim --with-python (already on Brewfile)
python2 -m pip install neovim --upgrade
python3 -m pip install neovim --upgrade
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

### [Node/npm](https://www.npmjs.com/)

Install Node/NPM packages
```
~/.config/node/install-npm-packages.sh
```

List top-level global installed NPM packages
```
npm ls -g --depth 1
```

### [OSX/Brew](http://brew.sh/)

Install brew and bundles:
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap Homebrew/bundle
brew bundle --file=~/.config/brew/Brewfile
```

Upgrade brewfile:
```
brew bundle dump --file=~/.config/brew/Brewfile --force
brew bundle cleanup --file=~/.config/brew/Brewfile --force
```

Install xcode command line tools (needed by some brew formulas):
```
xcode-select --install
```

### [Bundler](http://bundler.io/)

Install gem's bundler (ruby package manager)
```
sudo gem install bundler
bundle install --gemfile=~/.config/ruby/Gemfile
```

### [Fzf](https://github.com/junegunn/fzf)

Install fzf (non-OSX):
```
sudo git clone --depth 1 https://github.com/junegunn/fzf.git /usr/local/opt/fzf
sudo /usr/local/opt/fzf/install --key-bindings --completion --no-update-rc
```

Install fzf (OSX):
```
$(brew --prefix)/opt/fzf/install --key-bindings --completion --no-update-rc
```

### [VSCode](https://github.com/Microsoft/vscode)

Install VSCode user settings and extensions:
```
if [[ "$OSTYPE" == darwin* ]]; then
    ln -sf $HOME/.config/Code/User/*.json "$HOME/Library/Application Support/Code/User"
fi
```

Generate and install extensions list [Command line extension management](https://code.visualstudio.com/docs/editor/extension-gallery#_command-line-extension-management)
```
code --list-extensions | sort > ~/.config/Code/User/extensions.list
cat ~/.config/Code/User/extensions.list | xargs -L1 code --install-extension
```

### [Python/pip](https://pip.pypa.io/en/stable/quickstart/)

On OSX install python2 and python3 using brew but don't override OSX's python. See [Homebrew and python](https://docs.brew.sh/Homebrew-and-Python.html).

On OSX use ```python2/3 -m pip```, on non-OSX use ```pip```.

Install python (on OSX):
```
brew install python@2
#export PATH="/usr/local/opt/python@2/bin:$PATH" # if you dont see python2/pip2
#export PATH="/usr/local/opt/python@2/libexec/bin:$PATH" # default to python2
brew install python@3
```

Install python packages using pip:
```
python2 -m pip install -r ~/.config/python2/requirements.txt --disable-pip-version-check
python3 -m pip install -r ~/.config/python3/requirements.txt
```

Generate/Update packages using pip:
```
python2 -m pip freeze --q >! ~/.config/python2/requirements.txt --disable-pip-version-check
python3 -m pip freeze --q >! ~/.config/python3/requirements.txt
```

When updating python, pip/setuptools may beed to be updated:
```
python2 -m pip install --upgrade pip setuptools wheel
python3 -m pip install --upgrade pip setuptools wheel
```

Uninstall all pip packages:
```
python2 -m pip freeze | xargs python2 -m pip uninstall -y
python3 -m pip freeze | xargs python3 -m pip uninstall -y
```

Upgrade all pip packages:
```
python2 -m pip freeze -qq | cut -d '=' -f1 | python2 -m pip install --upgrade -r /dev/stdin
python3 -m pip freeze -qq | cut -d '=' -f1 | python3 -m pip install --upgrade -r /dev/stdin
```

### [Rust](https://www.rust-lang.org/)

Install rust using [rustup](https://rustup.rs/):
```
# non-OSX
curl https://sh.rustup.rs -sSf | sh
# OSX
brew install rustup ; rustup-init -y
rustc --version
```

Update rust:
```
rustup update
```

Install rls and rustfmt/rustsym:
```
rustup component add rls-preview rust-analysis rust-src
rustup component add rustfmt
cargo install rustsym
```

List packages installed
```
cargo install --list
```

Manage cache
```
cargo install cargo-cache
cargo cache -a # autoclean
```

### [Newsboat](https://github.com/newsboat/newsboat)

Export OPML form feedly (see https://blog.feedly.com/opml/)
```
open https://feedly.com/i/opml
```

Import OPML from feedly
```
newsboat -i ~/.config/rss/feedly.opml
```

### [MR](http://myrepos.branchable.com/)

Register git repos
```
find ~/Repos -maxdepth 1 -mindepth 1 -print0 | sort -z | xargs -0 -n1 mr register
(copy ~/.mrconfig into new host)
```

Update al repos
```
mr -j5 update
```

### [alacritty](https://github.com/jwilm/alacritty.git)

Install alacritty:
```
# non-OSX
yum|apt-get|pacman -S alacritty

# OSX
brew cask install alacritty (already on Brewfile)
ln -s /usr/local/opt/alacritty/Applications/Alacritty.app /Applications/
```

### [item2](https://iterm2.com/)

Load/Save Profiles
````
Preferences -> Profiles -> Import JSON Profiles / Save as Profile as JSON (~/.config/iterm/Default.json)
````

### [fisher](https://github.com/jorgebucaran/fisher)

Update
```
fisher ls
fisher seld-update
```
See [awesome-fish](https://github.com/jorgebucaran/awesome-fish) and (oh-my-fish)[https://github.com/oh-my-fish] for more plugins.

### TODO
- zpreto-contrib or zgen?

