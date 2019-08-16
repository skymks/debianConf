let s:save_cpo = &cpo
set cpo&vim

function! lightline#custom#filename() abort
   return &filetype ==# 'nerdtree' ? 'NERDTree' :
   \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
