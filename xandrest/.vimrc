set term=xterm-256color

set nocompatible
set backspace=indent,eol,start
set nobackup		" keep a backup file (restore to previous version)
set nowritebackup
set noswapfile

set undofile		" keep an undo file (undo changes after closing)
set history=150		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching


map Q gq
" Theme
set cursorline
set t_Co=256
set t_ut=
"set background=dark "oceanlight autumn 
colorscheme Mustang

"indent
"map <F11> <Esc>:!indent -i8 -br -ce -brf -brs -di -lp  %<CR>
map <F11> <Esc>:!indent -i8 -kr -l10000 %<CR>
"menu
map <F2> <Esc>:MBEOpen <CR> :MBEFocus <CR>
"NERDTREE
map <F9> <Esc>:NERDTreeToggle<CR>
"Tag menu
map <F10> <Esc>:TagbarToggle<CR>
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>
nmap <S-Left> <Esc>:tabNext<CR>
nmap <S-Right> <Esc>:tabprevious<CR>

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

syntax on
set hlsearch

" Only do this part when compiled with support for autocommands.
if has("autocmd")
  filetype plugin indent on
  augroup vimrcEx
  au!
  autocmd FileType text setlocal textwidth=78

  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else
  set autoindent		" always set autoindenting on
endif " has("autocmd")

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langnoremap')
  set langnoremap
endif
set hidden
set wildmenu
set showcmd
set cmdheight=2
set number
set nowrap
set showmatch
set smartcase
set autoindent
set smartindent
set smarttab
set softtabstop=8
" auto start
autocmd VimEnter * NERDTree
autocmd VimEnter * TagbarToggle
