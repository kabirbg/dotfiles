export PATH="/usr/local/opt/openjdk/bin:/usr/local/opt/python@3.10/libexec/bin:$PATH"

# Set neovim as default text editor
export EDITOR="$(command -v nvim)"

# oh-my-zsh settings
export ZSH="/Users/kabir/.oh-my-zsh"
ZSH_THEME=random
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=1
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git ruby colored-man-pages command-not-found forklift lol emotty themes emoji-clock rand-quote zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# aliases
alias a="pmset sleepnow"
alias empty="ls -A ~/.Trash/* && rm -rf ~/.Trash/*"
alias wttr="curl wttr.in"
alias icat="kitty +kitten icat"
alias d="kitty +kitten diff"
alias clip="kitty +kitten clipboard"
alias ytd='youtube-dl'
alias pseudo='sudo'

fortune | cowsay -n | lolcat
