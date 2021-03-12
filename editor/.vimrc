execute pathogen#infect()
filetype off
filetype plugin indent on
let mapleader = ","
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set noswapfile

set nocompatible

" Windows
set splitright

" Syntax Highlighting
syntax on
set t_Co=256
let g:solarized_termcolors=256
set background=light
colorscheme solarized

" Ctrl-p config
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Ale
let g:airline#extensions#ale#enabled = 1
let g:ale_enabled = 1
let g:ale_completion_enabled = 1

" Mappings
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
nmap <leader>f <Plug>(ale_find_references)
nmap <leader>h <Plug>(ale_hover)
nmap <leader>g <Plug>(ale_go_to_definition)
nmap <leader>G <Plug>(ale_go_to_definition_in_vsplit)

" Project specific settings
let $PATH = '.vim-ide/bin:' . $PATH
silent! source .vimrc

let g:ctrlp_custom_ignore = {
  \ 'file': '\.snapshot$'
  \ }

" vim-wiki
function! VimwikiFindAllIncompleteTasks()
  VimwikiSearch /\* \[ \]/
  lopen
endfunction

function! VimwikiSetup()
  setlocal textwidth=80

  nmap <Leader>wx :call VimwikiFindAllIncompleteTasks()<CR>
endfunction

au BufReadPost,BufNewFile *.wiki call VimwikiSetup()

function! VimStartup()
  silent grep! '\* \[ \]' /Users/andrew/vimwiki/**/*.wiki
  copen
  wincmd w
endfunction

" autocmd VimEnter * call VimStartup()

command! BufOnly silent! execute "%bd|e#|bd#"
