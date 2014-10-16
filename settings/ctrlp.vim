" These settings were based on https://github.com/skwp/dotfiles/blob/master/vim/settings/ctrlp.vim

if exists("g:ctrlp_user_command")
  unlet g:ctrlp_user_command
endif
if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command =
    \ 'ag %s --files-with-matches -g "" --ignore "\.git$\|\.hg$\|\.svn$"'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
else
  " Fall back to using git ls-files if Ag is not available
  let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard --others']
endif

" Default to filename searches - so that appctrl will find application
" controller
let g:ctrlp_by_filename = 0

" Don't jump to already open window. This is annoying if you are maintaining
" several Tab workspaces and want to open two windows into the same file.
let g:ctrlp_switch_buffer = 0

" We don't want to use Ctrl-p as the mapping because
" it interferes with YankRing (paste, then hit ctrl-p)
" let g:ctrlp_map = ' p'
nnoremap <Leader>p :CtrlP<CR>
nnoremap <Leader>b :CtrlPBuffer<cr>
nnoremap <Leader>t :CtrlPMRUFiles<CR>
nnoremap <C-P> :ClearCtrlPCache<cr>

" Idea from : http://www.charlietanksley.net/blog/blog/2011/10/18/vim-navigation-with-lustyexplorer-and-lustyjuggler/
" Open CtrlP starting from a particular path<Leader> making it much
" more likely to find the correct thing first. mnemonic 'jump to [something]'
nnoremap <Leader>a :CtrlP app<CR>
nnoremap <Leader>l :CtrlP lib<CR>
nnoremap <Leader>n :CtrlP models<CR>
nnoremap <Leader>v :CtrlP app/views<CR>
nnoremap <Leader>m :CtrlP app/models<CR>
nnoremap <Leader>c :CtrlP app/controllers<CR>
nnoremap <Leader>i :CtrlP app/assets/javascripts<CR>
nnoremap <Leader>y :CtrlP app/assets/stylesheets<CR>
nnoremap <Leader>js :CtrlP spec<CR>
nnoremap <Leader>jf :CtrlP features<CR>

