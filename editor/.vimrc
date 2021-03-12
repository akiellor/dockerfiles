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
