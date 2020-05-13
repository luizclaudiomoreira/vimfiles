" Stolen from https://github.com/skwp/dotfiles
function! FindInNerdTree()
  if &modifiable && strlen(expand('%')) > 0 && !&diff
    NERDTreeFind
  endif
endfunction
nnoremap <Leader>n :call FindInNerdTree()<CR>
