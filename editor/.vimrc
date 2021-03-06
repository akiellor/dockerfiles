execute pathogen#infect()
syntax on
filetype plugin indent on

set t_Co=256
let g:solarized_termcolors=256
set background=light

set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set noswapfile

colorscheme solarized

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

set viminfo='1000,n/vim/.viminfo'

let mapleader = ","

noremap <leader>d :NERDTreeToggle<cr>
