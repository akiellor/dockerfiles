execute pathogen#infect()
filetype plugin indent on
let mapleader = ","
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set noswapfile

" Windows
set splitright

" Syntax Highlighting
syntax on
set t_Co=256
let g:solarized_termcolors=256
set background=light
colorscheme solarized

" Ctrl-p config
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Ale
let g:airline#extensions#ale#enabled = 1
let g:ale_enabled = 1

" Mappings
nmap <leader>d :NERDTreeToggle<cr>
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <leader>f <Plug>(ale_find_references)
nmap <leader>h <Plug>(ale_hover)
nmap <leader>g <Plug>(ale_go_to_definition)
nmap <leader>G <Plug>(ale_go_to_definition_in_vsplit)

" Project specific settings
let $PATH = '.vim-ide/bin:' . $PATH
silent! source .vim-ide/vimrc
