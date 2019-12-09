let s:save_cpo = &cpo
set cpo&vim

function! lightline#custom#mode() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &filetype ==# 'taglist' ? '' :
               \ &filetype ==# 'qf' ? '' :
               \ lightline#mode() 
endfunction

function! lightline#custom#paste() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &filetype ==# 'taglist' ? '' :
               \ &paste ? 'PASTE' : ''
endfunction

function! lightline#custom#readonly() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &filetype ==# 'taglist' ? '' :
               \ &readonly ? 'RO' : ''
endfunction

function! lightline#custom#modified() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &filetype ==# 'taglist' ? '' :
               \ &modified ? '+' : ''
endfunction

function! lightline#custom#filename() abort
   return &filetype ==# 'nerdtree' ? 'NERDTree' :
               \ &filetype ==# 'taglist' ? 'TAGList' :
               \ &filetype ==# 'qf' ? 'Quickfix' :
               \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

function! lightline#custom#maxlinenum() abort
   return &filetype ==# 'nerdtree' ? '' : 
               \ &filetype ==# 'taglist' ? '' :
               \ line('$')
endfunction

function! lightline#custom#charvaluehex() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &filetype ==# 'taglist' ? '' :
               \ printf('%4X',char2nr(strcharpart(strpart(getline('.'), col('.') - 1), 0, 1)))
endfunction

function! lightline#custom#filetype() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &filetype ==# 'taglist' ? '' :
               \ &filetype 
endfunction

function! lightline#custom#fileencoding() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &filetype ==# 'taglist' ? '' :
               \ &fileencoding
endfunction

function! lightline#custom#fileformat() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &filetype ==# 'taglist' ? '' :
               \ &fileformat
endfunction

function! lightline#custom#lineinfo() abort
   return &filetype ==# 'nerdtree' ? '' :
               \ &filetype ==# 'taglist' ? '' :
               \ printf('%3d:%-2d', line('.'), col('.'))
endfunction

function! lightline#custom#tabfilename(n) abort
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let winid = win_getid(winnr,a:n)
  " echom winid
  let wininfo = getwininfo(winid)[0]
  " echom wininfo
  let _ = expand('#'.buflist[winnr - 1].':t')
  return _ =~# 'NERD_tree_.*' ? 'NERDTree' :
               \ _ ==# '__Tag_List__' ? 'TAGList' :
               \ wininfo.quickfix ==# 1 ? 'Quickfix' :
               \ _ !=# '' ? _ : '[No Name]'
endfunction

function! lightline#custom#tabmodified(n) abort
  let winnr = tabpagewinnr(a:n)
  return gettabwinvar(a:n, winnr, '&modified') ? '+' : ''
endfunction

"function! lightline#custom#datetimer(timer) abort
"    exec 'redrawtabline'
"endfunction
"let datetimer = timer_start(10000, 'lightline#custom#datetimer', {'repeat':-1})

let &cpo = s:save_cpo
unlet s:save_cpo
