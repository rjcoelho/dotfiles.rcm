# Dotfiles for [@rjcoelho](https://github.com/rjcoelho)

[![xkcd: Automation](http://imgs.xkcd.com/comics/automation.png)](http://xkcd.com/1319/)

## Requirements:

- Git
- [Rcm](https://github.com/thoughtbot/rcm)

## Install:
    ```
    git clone --recursive https://github.com/rjcoelho/dotfiles.rcm ~/.dotfiles.rcm
    cd ~/.dotfiles.rcm ; RCRC="./rcrc" rcup
      or
    rcup -d ~/.dotfiles.rcm -x README.md -x LICENSE
    ```

### Rcm:
    ```
    curl -LO https://thoughtbot.github.io/rcm/dist/rcm-1.3.0.tar.gz
    tar -xvf rcm-1.3.0.tar.gz
    cd rcm-1.3.0
    ./Configure && make && sudo make install
    ```

#### ViM

Install (or upgrade) ViM plugins:
    ```
    vim +PlugInstall +qall
    ```

Update ViM bootstrap to latest:
    ```
    vim +VimBootstrapUpdate +qall
    ```

Generate new Vim-bootstrap:
    ```
    rm -rf .vim .vimrc
    curl http://vim-bootstrap.com/generate.vim --data 'editor=vim' > ~/.vimrc
    ```
Use '~.vimrc.local' and '~.vimrc.local.bundles' and local (not in dotfiles repo) configuration and bundles

### Git

Add aliases:
    ```
    git config --global include.path ~/.gitconfig.local
    ```

### Ctags

Install ctags:
    ```
    yum|apt-get|brew ctags
    ```

Generate .git/tags on checkout [ctags with git](https://github.com/scottsbaldwin/effortless-ctags-with-git):
    ```
    git config --global init.templatedir '~/.git_template'
    cd <REPO> ; chmod +x .git/hooks/* ; git init
    ```

Using [ctags in vim](https://andrew.stwrt.ca/posts/vim-ctags/)
    ```
    :tag function_name
    :set tags # show tags file used
    ```

### Erlang/Kerl

Install kerl (non-OSX):
    ```
    sudo curl -s https://raw.githubusercontent.com/kerl/kerl/master/kerl -o /usr/local/bin/kerl
    sudo chmod a+x /usr/local/bin/kerl
    ```

#### Fasd

Install Fasd (non-OSX):
    ```
    sudo curl -s https://raw.githubusercontent.com/clvv/fasd/master/fasd -o /usr/local/bin/fasd
    sudo chmod +x /usr/local/bin/fasd
    ```

#### OSX/Brew

Install brew and bundles:
    ```
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew tap Homebrew/bundle
    brew bundle --path=.config/brew/Brewfile
    ```

#### Fzf

Install Fzf (non-OSX):
    ```
    sudo git clone --depth 1 https://github.com/junegunn/fzf.git /usr/local/opt/fzf
    sudo /usr/local/opt/fzf/install --key-bindings --completion --no-update-rc
    ```

#### VSCode

Install VSCode user settings and extensions:
    ```
    if [[ "$OSTYPE" == darwin* ]]; then
      ln -sf $HOME/.config/Code/User/*.json "$HOME/Library/Application Support/Code/User"
    fi
    ```

#### Spacemacs

Install [spacemacs](http://spacemacs.org/):
    ```
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
    ```

## TODO
- Move to https://github.com/zsh-users/prezto
- Don't use zgen

## References:
- [rcm, an rc file manager](https://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos)
