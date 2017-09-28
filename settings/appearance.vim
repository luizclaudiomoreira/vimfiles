" ================ Appearance ====================
if has("gui_running")
  set guioptions-=T " no toolbar set guioptions-=m " no menus
  set guioptions-=r " no scrollbar on the right
  set guioptions-=R " no scrollbar on the right
  set guioptions-=l " no scrollbar on the left
  set guioptions-=b " no scrollbar on the bottom
  set guioptions-=L " no scrollbar on the nerdtree

  "tell the term has 256 colors
  set t_Co=256

  if has("gui_mac") || has("gui_macvim")
    set guifont=Monaco:h12
    set transparency=5
    set fullscreen
  endif

  " if isdirectory(expand("~/.vim/bundle/vim-colors-solarized/.git"))
  "   colorscheme solarized
  " endif
else
  set termguicolors
endif

set background=dark
