if [ "$(uname)" = "Darwin" ]
then export PATH="/Library/TeX/texbin:/Users/Kabir/.emacs.d/bin:/opt/X11/bin:/Applications/kitty.app/Contents/MacOS:$PATH" && alias vlc='/Applications/VLC.app/Contents/MacOS/VLC'
else export PATH="/home/kabir/bin:/home/kabir/.emacs.d/bin:/home/kabir/.local/bin:/usr/local/sbin:/usr/sbin:/sbin:$PATH"
fi

cd #because it's starting at / for some reason

# XDG_RUNTIME_DIR (for linux)
if [ "$(uname)" = "Darwin" ]
then export XDG_RUNTIME_DIR=/tmp/
else export XDG_RUNTIME_DIR=/run/user/1000/
fi

# set background image (uses feh)
feh --bg-tile ~/Pictures/3840x2160#8c1515.png

# Set neovim as default text editor
export EDITOR="$(command -v nvim)"

# oh-my-zsh settings
if [ "$(uname)" = "Darwin" ]
then export ZSH="/Users/Kabir/.oh-my-zsh"
else export ZSH="/home/kabir/.oh-my-zsh"
fi
ZSH_THEME=random
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=1
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="mm/dd/yyyy"
plugins=(git ruby colored-man-pages command-not-found osx forklift lol emotty themes emoji-clock rand-quote zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

source /home/kabir/.functions

# aliases
alias a="pmset sleepnow"
alias empty="ls -A ~/.Trash/* && rm -rf ~/.Trash/*"
alias wttr="curl wttr.in"
alias icat="kitty +kitten icat"
alias d="kitty +kitten diff"
alias clip="kitty +kitten clipboard"
alias y2d='youtube-dl'
alias pseudo='sudo'
alias brightness="xrandr --output eDP-1 --brightness"

# kitty
autoload -Uz compinit
compinit
kitty + complete setup zsh | source /dev/stdin

fortune | cowsay -n | lolcat

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/kabir/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/kabir/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/kabir/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/kabir/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
