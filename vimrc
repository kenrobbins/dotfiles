call pathogen#infect()

set encoding=utf-8

syntax enable
colors torte

set noerrorbells
set novisualbell

set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set autoindent

set ruler
set backspace=eol,indent,start

set showmatch
set hlsearch
set incsearch

set ignorecase
set smartcase

set number
"set mouse=a

filetype plugin indent on

set history=50

set wildmode=list:longest,full

set showmode
set showcmd

set guifont=Liberation\ Mono\ 9
highlight Comment ctermfg=cyan cterm=NONE

set formatoptions=cq
set textwidth=79
set scrolloff=3

set nocp

set listchars=tab:»-,trail:·,eol:$

" remove trailing whitespace on save for all files
autocmd BufWritePre * :%s/\s\+$//e

if has("statusline") && !&cp
  set laststatus=2  " always show the status bar

  " Start the status line
  set statusline=%f\ %y%m%r

  " Add fugitive
  set statusline+=%{fugitive#statusline()}

  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*

  " Finish the statusline
  set statusline+=\ L:%l/%L[%p%%]
  set statusline+=\ C:%v
  set statusline+=\ B:%n
  set statusline+=\ [%b][0x%B]

  highlight StatusLine gui=NONE guifg=white guibg=#cc5500 ctermfg=white ctermbg=166 cterm=NONE
  highlight StatusLineNC gui=NONE guifg=black guibg=grey ctermfg=black ctermbg=grey cterm=NONE
endif

" MiniBufExpl Colors
hi MBEVisibleActive guifg=#A6DB29
hi MBEVisibleChangedActive guifg=#F1266F
hi MBEVisibleChanged guifg=#F1266F
hi MBEVisibleNormal guifg=#5DC2D6
hi MBEChanged guifg=#CD5907
hi MBENormal guifg=#cccccc

nmap <F7> :Errors<CR>

set guioptions=agi

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

imap jk <Esc>

" use space as the leader key
nnoremap <Space> <Nop>
let mapleader=" "

let g:ackprg="ack-grep -H --nocolor --nogroup --column"

nnoremap <silent> <Leader>v :source ~/.vimrc<CR>
nnoremap <silent> <Leader>s :set nolist!<CR>
nnoremap <silent> <Leader>h :set hlsearch!<CR>
nnoremap <silent> <Leader>k :MiniBufExplorer<CR>
nnoremap <Leader>a :Ack

"if you're in a screen, set the title to the file name, and stuff
let &titlestring = expand("%:t")
if &term == "screen"
  set t_ts=
  set t_fs=
endif
if &term == "screen" || &term == "xterm"
  set title
endif

