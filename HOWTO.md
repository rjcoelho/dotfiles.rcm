# [alacritty](https://github.com/jwilm/alacritty.git)

Install
```
# non-OSX
yum|apt-get|pacman -S alacritty

# OSX
brew cask install alacritty
ln -s /usr/local/opt/alacritty/Applications/Alacritty.app /Applications/
```

# [brave-browser](https://github.com/brave) / [firefox](https://en.wikipedia.org/wiki/Firefox) / [vivaldi](https://en.wikipedia.org/wiki/Vivaldi_%28web_browser%29)

Extensions (brave-bro)
```
# brave-browser
cvim, bitwarden, save to pocket, feedly notifier

# others
DuckDuckGo Privacy Essentials, (maybe) ublock origin
```

# [brew/osx](http://brew.sh/)

Install brew and bundles
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap Homebrew/bundle
brew bundle --file=~/.config/brew/Brewfile
```

Upgrade brewfile
```
brew bundle dump --file=~/.config/brew/Brewfile --force
brew bundle cleanup --file=~/.config/brew/Brewfile --force
```

Install xcode command line tools (needed by some brew formulas)
```
xcode-select --install
```

# [erlang/kerl](https://github.com/kerl/kerl)

Install
```
# non-OSX
sudo curl -s https://raw.githubusercontent.com/kerl/kerl/master/kerl -o /usr/local/bin/kerl
sudo chmod a+x /usr/local/bin/kerl
```

# [fasd](https://github.com/clvv/fasd)

Install
```
# non-OSX
sudo curl -s https://raw.githubusercontent.com/clvv/fasd/master/fasd -o /usr/local/bin/fasd
sudo chmod +x /usr/local/bin/fasd
```

# [fisher](https://github.com/jorgebucaran/fisher)

Update
```
fisher ls
fisher seld-update
```

See [awesome-fish](https://github.com/jorgebucaran/awesome-fish) and (oh-my-fish)[https://github.com/oh-my-fish] for more plugins.

# [fzf](https://github.com/junegunn/fzf)

Install
```
# non-OSX
sudo git clone --depth 1 https://github.com/junegunn/fzf.git /usr/local/opt/fzf
sudo /usr/local/opt/fzf/install --key-bindings --completion --no-update-rc

# OSX
$(brew --prefix)/opt/fzf/install --key-bindings --completion --no-update-rc
```

# [git](https://github.com/git/git)

Add aliases and templates [git-configuration](https://git-scm.com/book/en/v2/Customizing-Git-Git-Configuration)
```
git config --global include.path ~/.gitconfig.local
```

Auto-squashing
```
git commit --fixup ":/most-recent-commit-message"
git rebase -i --autosquash
```

See [tig](https://jonas.github.io/tig) and [grv](https://github.com/rgburke/grv)

# [hammerspoon](https://github.com/Hammerspoon/hammerspoon)

See pre-made plugins / [spoons](http://www.hammerspoon.org/go/#spoons) and [sample-configuration](https://github.com/Hammerspoon/hammerspoon/wiki/Sample-Configurations)

# [item2](https://iterm2.com/)

Load/Save Profiles
````
Preferences -> Profiles -> Import JSON Profiles / Save as Profile as JSON (~/.config/iterm/Default.json)
````

# [kakoune](https://kakoune.org/)

Install
```
brew install kakoune
```

Install/update/clean [plugins](http://kakoune.org/plugins.html) using [plug.kak](https://github.com/andreyorst/plug.kak):
```
:plug-install
:plug-update
:plug-clean
```

# [karabiner](https://github.com/pqrs-org/Karabiner-Elements)

For OSX only, import from config/karabiner
All modifier keys are done in karabiner

# [mr](http://myrepos.branchable.com/)

Register git repos
```
find ~/Repos -maxdepth 1 -mindepth 1 | sort | xargs -n1 mr register
(copy ~/.mrconfig into new host)
```

Update all repos
```
cd ~ ; mr -j5 update
```

# [neovim](https://github.com/neovim/neovim)

Install
```
# non-OSX
dnd|yum|apt-get|pacman -S neovim python2-neovim python-neovim

# OSX
brew install neovim --with-python
python2 -m pip install neovim --upgrade
python3 -m pip install neovim --upgrade
```

To use your existing Vim configurations
```
ln -sf ~/.vim ~/.config/nvim
ln -sf ~/.vimrc ~/.config/nvim/init.vim
```

# [newsboat](https://github.com/newsboat/newsboat)

Export OPML form feedly (see https://blog.feedly.com/opml/)
```
open https://feedly.com/i/opml
```

Import OPML from feedly
```
newsboat -i ~/.config/rss/feedly.opml
```

# [node/npm](https://www.npmjs.com/)

Install Node/NPM packages
```
~/.config/node/install-npm-packages.sh
```

List top-level global installed NPM packages
```
npm ls -g --depth 1
```

# [nord-theme](https://www.nordtheme.com/)

* [alacritty](https://github.com/arcticicestudio/nord-alacritty)
* [dircolors](https://www.nordtheme.com/ports/dircolors)
* [iterm2](https://github.com/arcticicestudio/nord-iterm2)
* [kitty](https://github.com/connorholyday/nord-kitty)
* [slack](https://www.nordtheme.com/docs/ports/slack)
* [tmux](https://www.nordtheme.com/ports/tmux)
* [vim](https://www.nordtheme.com/ports/vim)
* [vscode](https://github.com/arcticicestudio/nord-visual-studio-code)

# [python/pip](https://pip.pypa.io/en/stable/quickstart/)

On OSX install python2 and python3 using brew but don't override OSX's python. See [Homebrew and python](https://docs.brew.sh/Homebrew-and-Python.html).

On OSX use `python2/3 -m pip`, on non-OSX use `pip`.

Install python (on OSX):
```
brew install python@2
#export PATH="/usr/local/opt/python@2/bin:$PATH" # if you dont see python2/pip2
#export PATH="/usr/local/opt/python@2/libexec/bin:$PATH" # default to python2
brew install python@3
```

Install python packages using pip
```
python2 -m pip install -r ~/.config/python2/requirements.txt --disable-pip-version-check
python3 -m pip install -r ~/.config/python3/requirements.txt
```

Generate/Update packages using pip
```
python2 -m pip freeze --q >! ~/.config/python2/requirements.txt --disable-pip-version-check
python3 -m pip freeze --q >! ~/.config/python3/requirements.txt
```

When updating python, pip/setuptools may beed to be updated
```
python2 -m pip install --upgrade pip setuptools wheel
python3 -m pip install --upgrade pip setuptools wheel
```

Uninstall all pip packages
```
python2 -m pip freeze | xargs python2 -m pip uninstall -y
python3 -m pip freeze | xargs python3 -m pip uninstall -y
```

Upgrade all pip packages
```
python2 -m pip freeze -qq | cut -d '=' -f1 | python2 -m pip install --upgrade -r /dev/stdin
python3 -m pip freeze -qq | cut -d '=' -f1 | python3 -m pip install --upgrade -r /dev/stdin
```

# [rcm](https://github.com/thoughtbot/rcm)

Install
```
# non-OSX
curl -LO https://thoughtbot.github.io/rcm/dist/rcm-1.3.3.tar.gz
tar -xvf rcm-1.3.3.tar.gz
cd rcm-1.3.3
./Configure && make && sudo make install
```

# [ruby/bundler](http://bundler.io/)

Install gem's bundler (ruby package manager)
```
sudo gem install bundler
bundle install --gemfile=~/.config/ruby/Gemfile
```

# [rust](https://www.rust-lang.org/)

Install using [rustup](https://rustup.rs/):
```
# non-OSX
curl https://sh.rustup.rs -sSf | sh
# OSX
brew install rustup ; rustup-init -y
rustc --version
```

Update
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

# [tmux](https://github.com/tmux/tmux)

Generate theme (tmuxline)[https://github.com/edkolev/tmuxline.vim]:
```
inside tmux open vim and ':Tmuxline airline' or ':Tmuxline lightline' then ':TmuxlineSnapshot ~/.tmux/airline.conf'
```

Install/Update/Remove plugins [tmux-plugins](https://github.com/tmux-plugins)/[awesome-tmux](https://github.com/rothgar/awesome-tmux)
```
edit tmux.conf
set -g @plugin 'tmux-plugins/tmux-sensible'
'prefix + I' to install (or 'prefix + U' to Update)

or
'prefix + alt + u' to remove
rm -rf ~/.tmux/plugins/<plugin_name>
```

Using [tmux-xpanes](https://github.com/greymd/tmux-xpanes)

```
xpanes --ssh myuser1@host1 myuser2@host2
```

See (tmux-control-mode)[https://github.com/tmux/tmux/wiki/Control-Mode] for [iterm2 integration](https://iterm2.com/documentation-tmux-integration.html)
```
tmux -CC new -A -s main
```

# [vim](http://www.vim.org/)

To generate a new vimrc using [Vimbootstrap](http://vim-bootstrap.com)
```
curl 'http://vim-bootstrap.com/generate.vim' --data 'editor=vim' > ~/.vimrc
```

Update plugins
```
vim +PlugUpgrade +PlugUpdate +qall
```

Cleanup/remove unused directories/plugins
```
vim +PlugClean! +qall
```

To uninstall (vim distribution)
```
rm -rf ~/.vimrc ~/.vim
```

To check vim startup time
```
vim --startuptime vim.log +qall
cat vim.log
```

# [vscode](https://github.com/Microsoft/vscode)

Install VSCode user settings and extensions
```
# OSX
ln -sf $HOME/.config/code/User/*.json "$HOME/Library/Application Support/Code/User"
ln -sf $HOME/.config/code-insiders/User/*.json "$HOME/Library/Application Support/Code - Insiders/User"
```

Generate and install extensions list [Command line extension management](https://code.visualstudio.com/docs/editor/extension-gallery#_command-line-extension-management)
```
code --list-extensions | sort >! ~/.config/code/User/extensions.list
cat ~/.config/Code/User/extensions.list | xargs -L1 code --install-extension

code-insiders --list-extensions | sort >! ~/.config/code-insiders/User/extensions.list
cat ~/.config/Code/User/extensions.list | xargs -L1 code --install-extension
```

See [vscode extensions marketplace](https://marketplace.visualstudio.com/VSCode) [vscode themes](https://vscodethemes.com/)

# [zimfw](https://github.com/zimfw/zimfw)

Install zimfw
```
curl -s https://raw.githubusercontent.com/zimfw/zimfw/develop/zimfw.zsh -o zim/zimfw.zsh (already done on rcup)
source ~/.zim/zimfw.zsh install
```

Added/remove new module(s) to `.zimrc`
```
zimfw uninstall ; zimfw install
```

Change module(s) to `.zimrc`
```
zimfw clean ; zimfw compile
```
Update your modules to their latest revisions:
```
zimfw update
```

Upgrade zimfw.zsh to its latest version
```
zimfw upgrade
zimfw info
```

Measure zsh init
```
time zsh -i -c exit
```

# [zsh/zsh-users](https://github.com/zsh-users)

Install
```
brew install zsh
chsh -s /bin/zsh
```

Profiling `zshrc`
```
zmodload zsh/zprof # top of your .zshrc file
zprof # bottom of .zshrc
```