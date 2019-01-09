" .vimrc File
" Maintained by: Luiz Claudio Moreira Junior
" talkto@luizclaudiomoreira.com
" http://luizclaudiomoreira.com

scriptencoding utf-8
set encoding=utf-8
set nocompatible

filetype on
filetype plugin on
filetype indent on
syntax   on

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
set showcmd                                     " Show incomplete cmds down the bottom
set autoread                                    " Reload files changed outside vim
set showmode                                    " Show current mode down the bottom
set gdefault                                    " Assume the /g flag on :s substitutions to replace all matches in a line
set hlsearch                                    " Highlight search terms
set wildmenu                                    " Completion
set showmatch
set incsearch                                   " Highlight search terms dynamically as they are typed.
set autowrite
set expandtab                                   " Tab for spaces
set cursorline                                  " Highlight current line
set cursorcolumn
hi CursorLine cterm=none
set lazyredraw
set ignorecase
set smartcase
set autoindent                                  " Always set autoindenting on
set shiftround                                  " When at 3 spaces and I hit >>, go to 4, not 5.
set smartindent
set scrolloff=3
set laststatus=2                                " Always show status line.
set timeoutlen=500
set relativenumber                              " Line numbers are good
set number
set formatoptions=qrn1
set wildmode=list:longest
set backspace=indent,eol,start                  " Intuitive backspacing in insert mode
set list listchars=tab:»·,trail:·               " Display extra whitespace
set tabstop=2 shiftwidth=2 softtabstop=2        " Tab size
set splitbelow                                  " Open new split panes to right and bottom, which feels more natural (from: thoughtbot/dotfiles/blob/master/vimrc)
set splitright
set linespace=-1
set go-=T
set foldenable
set mousehide
set mouse=a
set dictionary+=~/.vim/dict.txt
set noshowmatch
set clipboard=unnamed
set novisualbell
set noerrorbells
set belloff=all

autocmd Filetype gitcommit setlocal spell textwidth=72



au BufNewFile,BufRead *.god set filetype=ruby
au BufNewFile,BufRead *.ex set filetype=elixir
au BufNewFile,BufRead *.exs set filetype=elixir
au BufNewFile,BufRead *.eex set filetype=html

" ================ Key mappings ====================
let mapleader   = " "
let g:mapleader = " "

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
nmap <leader>ev :tabedit $MYVIMRC<cr>
" Source the vimrc file after saving it. This way, you don't have to reload Vim to see the changes.
if has("autocmd")
 augroup myvimrchooks
  au!
  autocmd bufwritepost .vimrc source ~/.vimrc
 augroup END
endif

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

" Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing (from: thoughtbot/dotfiles/blob/master/vimrc)
let g:Tlist_Ctags_Cmd="rm tags && ctags --exclude='*.js'"

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

" autocmd BufEnter * cd %:p:h

so ~/.vim/settings.vim
so ~/.vim/functions.vim

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'
