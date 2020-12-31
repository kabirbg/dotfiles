" download vim-plug if missing
if empty(glob("~/.vim/autoload/plug.vim"))
  silent! execute '!curl --create-dirs -fsSLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * silent! PlugInstall
endif

" declare plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
call plug#end()

set number
syntax on
colorscheme default
set autoindent
set tabstop=4
set softtabstop=4
set expandtab
set cursorline
set mouse=a
set wrap
set linebreak
