# XDG_RUNTIME_DIR (for linux)
export XDG_RUNTIME_DIR=/tmp/

# Set neovim as default text editor
export VISUAL="/usr/local/bin/emacs"
export EDITOR="/usr/local/bin/nvim"

# oh-my-zsh settings
export ZSH="/Users/Kabir/.oh-my-zsh"
ZSH_THEME=RANDOM
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=1
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git ruby colored-man-pages command-not-found osx forklift lol themes emoji-clock rand-quote zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# aliases
alias a="pmset sleepnow"
alias empty="rm -rf ~/.Trash/*"
alias wttr="curl wttr.in"
alias icat="kitty +kitten icat"
alias d="kitty +kitten diff"
alias clip="kitty +kitten clipboard"

# kitty
autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

pfetch
