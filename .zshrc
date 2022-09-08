export PATH="/home/kabir/.cargo/bin:/home/kabir/.emacs.d/bin:/home/kabir/.local/bin:/usr/local/sbin:/usr/sbin:/sbin:/bin:$PATH"

# XDG_RUNTIME_DIR (for linux)
export XDG_RUNTIME_DIR=/run/user/1000/

# Set neovim as default text editor
export EDITOR="$(command -v nvim)"

# oh-my-zsh settings
export ZSH="/home/kabir/.oh-my-zsh"
ZSH_THEME=random
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=1
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git ruby colored-man-pages command-not-found forklift lol emotty themes emoji-clock rand-quote zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

source /home/kabir/.functions

# aliases
alias a="pmset sleepnow"
alias empty="ls -A ~/.Trash/* && rm -rf ~/.Trash/*"
alias wttr="curl wttr.in"
alias icat="kitty +kitten icat"
alias d="kitty +kitten diff"
alias clip="kitty +kitten clipboard"
alias ytd='youtube-dl'
alias pseudo='sudo'
if [ "$(uname)" != "Darwin" ]; then
        alias open=xdg-open
fi
alias brightness="wlr-randr --output eDP-1 --brightness"

fortune | cowsay -n | lolcat
