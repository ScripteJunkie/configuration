export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

ENABLE_CORRECTION="true"

# autosuggestions super slow
plugins=(git colorize pip python brew macos zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

alias c="clear"

function oc() {
    if [ -z "$SSH_CLIENT" ] || [ -z "$SSH_TTY" ]
    then
        code $*
    else
        vim $*
    fi
}

function jt() { cd "$PWD/$*"; ls }
function jd() { cd $*; ls }
alias jb="jd ../"
alias jh="jd ~/"

alias jr="jd ~/Code/Github"
alias jc="jd ~/Code"

alias rs="exec zsh"
alias rg="go run main.go"
alias oz="oc ~/.zshrc"
alias o='open .'

alias os='ssh amaze@192.168.1.251'

export GOPATH=/Users/ashtonmaze/go
export GOROOT=/usr/local/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOPATH
export PATH=$PATH:$GOROOT/bin

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

clear
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ashtonmaze/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ashtonmaze/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ashtonmaze/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ashtonmaze/google-cloud-sdk/completion.zsh.inc'; fi

# bun completions
[ -s "/Users/ashtonmaze/.bun/_bun" ] && source "/Users/ashtonmaze/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/mysql-client/lib"
export CPPFLAGS="-I/opt/homebrew/opt/mysql-client/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/mysql-client/lib/pkgconfig"
