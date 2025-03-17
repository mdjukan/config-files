:set number
set term=xterm-256color
syntax enable

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'tpope/vim-commentary'

call plug#end()

inoremap { {<CR>}<Esc>ko
nnoremap <C-t> :NERDTreeToggle<CR>

highlight VertSplit cterm=NONE

set expandtab        " Use spaces instead of tabs
set tabstop=4        " Set the width of a tab to 4 spaces
set shiftwidth=4     " Set the number of spaces for auto-indentation
set softtabstop=4    " Set the number of spaces that a tab key will insert

