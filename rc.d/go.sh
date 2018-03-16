# return if requirements are not found.
if [ ! -x "$(command -v go)" ]; then
    return 1
fi

# from http://sourabhbajaj.com/mac-setup/Go/README.html
export GOPATH=$HOME/go # default
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
