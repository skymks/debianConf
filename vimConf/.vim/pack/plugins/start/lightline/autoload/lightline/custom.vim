let s:save_cpo = &cpo
set cpo&vim

function! lightline#custom#mode() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ lightline#mode() 
endfunction

function! lightline#custom#paste() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &paste ? 'PASTE' : ''
endfunction

function! lightline#custom#readonly() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &readonly ? 'RO' : ''
endfunction

function! lightline#custom#modified() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &modified ? '+' : ''
endfunction

function! lightline#custom#filename() abort
   return &filetype ==# 'nerdtree' ? 'NERDTree' :
               \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

function! lightline#custom#maxlinenum() abort
   return &filetype ==# 'nerdtree' ? '' : line('$')
endfunction

function! lightline#custom#charvaluehex() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ printf('%4X',char2nr(strcharpart(strpart(getline('.'), col('.') - 1), 0, 1)))
endfunction

function! lightline#custom#filetype() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &filetype 
endfunction

function! lightline#custom#fileencoding() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &fileencoding
endfunction

function! lightline#custom#fileformat() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &fileformat
endfunction

function! lightline#custom#lineinfo() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ printf('%3d:%-2d', line('.'), col('.'))
endfunction

function! lightline#custom#tabfilename(n) abort
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let _ = expand('#'.buflist[winnr - 1].':t')
  return _ =~# 'NERD_tree_.*' ? 'NERDTree' :
              \ _ !=# '' ? _ : '[No Name]'
endfunction

function! lightline#custom#tabmodified(n) abort
  let winnr = tabpagewinnr(a:n)
  return gettabwinvar(a:n, winnr, '&modified') ? '+' : ''
endfunction

function! lightline#custom#datetimer(timer) abort
    exec 'redrawtabline'
endfunction
let datetimer = timer_start(1000, 'lightline#custom#datetimer', {'repeat':-1})

let &cpo = s:save_cpo
unlet s:save_cpo
