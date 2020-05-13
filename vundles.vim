" Install Vundle
if !isdirectory(expand("~/.vim/bundle/vundle/.git"))
  !git clone git://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif

" Start Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

Bundle 'ervandew/supertab'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'vim-ruby/vim-ruby'
Bundle 'kien/ctrlp.vim'
Bundle 'slim-template/vim-slim'
Bundle 'kchmck/vim-coffee-script'
Bundle "terryma/vim-multiple-cursors"
Bundle "altercation/vim-colors-solarized"
Bundle "morhetz/gruvbox"
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'slashmili/alchemist.vim'
Bundle 'junegunn/vim-emoji'
Bundle 'junegunn/vim-easy-align'
Bundle 'janko-m/vim-test'
Bundle 'elixir-lang/vim-elixir'
Bundle 'Chiel92/vim-autoformat'
Bundle 'thoughtbot/vim-rspec'
" Bundle 'vim-syntastic/syntastic'
Bundle 'ngmy/vim-rubocop'
Bundle 'wakatime/vim-wakatime'

" PHP/Wordpress
" Plugin 'dsawardekar/wordpress.vim'
" Plugin 'StanAngeloff/php.vim'
