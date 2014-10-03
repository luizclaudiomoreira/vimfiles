scriptencoding utf-8
set encoding=utf-8
set nocompatible


" ================ Plugins ====================
silent! runtime macros/matchit.vim
silent! runtime vundles.vim
if filereadable('vundles.local')
  silent! runtime vundles.local
endif


" ================ General ====================

set wrap
set title
set ruler                                       " Show the cursor position all the time
set hidden
set mouse=a
set showcmd                                     " Show incomplete cmds down the bottom
set autoread                                    " Reload files changed outside vim
set showmode                                    " Show current mode down the bottom
set gdefault                                    " Assume the /g flag on :s substitutions to replace all matches in a line
set hlsearch                                    " Highlight search terms
set wildmenu                                    " Completion
set showmatch
set incsearch                                   " Highlight search terms dynamically as they are typed.
set smartcase
set expandtab                                   " Tab for spaces
set cursorline                                  " Highlight current line
set visualbell                                  " No sounds
set ignorecase
set autoindent                                  " Always set autoindenting on
set shiftround                                  " When at 3 spaces and I hit >>, go to 4, not 5.
set smartindent
set scrolloff=3
set textwidth=140
set history=1000                                " Store lots of :cmdline history
set laststatus=2                                " Always show status line.
set relativenumber                              " Line numbers are good
set formatoptions=n
set backupdir=~/.vim/tmp
set directory=~/.vim/tmp
set wildmode=list:longest
set backspace=indent,eol,start                  " Intuitive backspacing in insert mode
set list listchars=tab:»·,trail:·               " Display extra whitespace
set tabstop=2 shiftwidth=2 softtabstop=2        " Tab size
set splitbelow                                  " Open new split panes to right and bottom, which feels more natural (from: thoughtbot/dotfiles/blob/master/vimrc)
set splitright


filetype on
filetype off
filetype plugin indent on
syntax   enable


" ================ Key mappings ====================
let mapleader   = ","
let g:mapleader = ","

" Quit with q
map <Leader>q :q<CR>

" Save with w
map <Leader>w <esc>:w<cr>

" Disable directions key navigation
noremap <up>    :echoerr 'Use K to go up'<CR>
noremap <down>  :echoerr 'Use J to go down'<CR>
noremap <left>  :echoerr 'Use H to go left'<CR>
noremap <right> :echoerr 'Use L to go right'<CR>

" No highlight search
nmap <silent> <leader>no :silent :nohlsearch<CR>

" Edit and Reload vimfiles
map <Leader>ev :sp ~/.vimrc<cr>
map <Leader>rv :so ~/.vimrc<CR>

" Window split (from: skwp/dotfiles)
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" Paste Toggle (from: fellipebrito/dotfiles)
nnoremap <F8> :set invpaste paste?<CR>
set pastetoggle=<F8>

" Move between split windows by using the four directions H, L, I, N
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j

" Tests and StyleGuides (from: fellipebrito/dotfiles)
map <Leader>rub :!rubocop %<cr>
map <Leader>auto :!rubocop -a %<cr>
map <Leader>S :w<cr>:call RunCurrentTest()<CR>
map <Leader>s :w<cr>:call RunCurrentLineInTest()<CR>

" Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing (from: thoughtbot/dotfiles/blob/master/vimrc)
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"

" Index ctags from any project, including those outside Rails (from: thoughtbot/dotfiles/blob/master/vimrc)
if has("gui_macvim") && has("gui_running")
  map <Leader>ct :!/usr/local/bin/ctags -R .<CR>
else
  map <Leader>ct :!ctags -R .<CR>
endif

" Switch between the last two files (from: thoughtbot/dotfiles/blob/master/vimrc)
nnoremap <leader><leader> <c-^>

nnoremap <Leader>gs :Gstatus<CR>

nnoremap <Leader>k :NERDTreeToggle<CR>

so ~/.vim/settings.vim
so ~/.vim/functions.vim
