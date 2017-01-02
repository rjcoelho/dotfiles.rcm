# Dotfiles for [@rjcoelho](https://github.com/rjcoelho)

[![xkcd: Automation](http://imgs.xkcd.com/comics/automation.png)](http://xkcd.com/1319/)

## Requirements:

- Git
- [Rcm](https://github.com/thoughtbot/rcm)

## Install:
    ```
    git clone --recursive https://github.com/rjcoelho/dotfiles ~/.dotfiles
    cd ~/.dotfiles
    RCRC="./rcrc" rcup
    ```

### Rcm:
    ```
    curl -LO https://thoughtbot.github.io/rcm/dist/rcm-1.3.0.tar.gz
    tar -xvf rcm-1.3.0.tar.gz
    cd rcm-1.3.0
    ./Configure && make && sudo make install
    ```

## References:
- [rcm, an rc file manager](https://robots.thoughtbot.com/rcm-for-rc-files-in-dotfiles-repos)
