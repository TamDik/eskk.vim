" vim:foldmethod=marker:fen:
scriptencoding utf-8
" Saving 'cpoptions' {{{
let s:save_cpo = &cpo
set cpo&vim
" }}}


function! s:run()
    call simpletap#throws_ok(
    \   "throw eskk#internal_error(['eskk'])",
    \   '^eskk: internal error at eskk$'
    \)
    call simpletap#throws_ok(
    \   "throw eskk#internal_error(['eskk', 'foo'])",
    \   '^eskk: internal error at eskk#foo$'
    \)
    call simpletap#throws_ok(
    \   "throw eskk#out_of_idx_error(['eskk'])",
    \   '^eskk: out of index at eskk$'
    \)
    call simpletap#throws_ok(
    \   "throw eskk#out_of_idx_error(['eskk', 'foo'])",
    \   '^eskk: out of index at eskk#foo$'
    \)
endfunction


call s:run()
Done


" Restore 'cpoptions' {{{
let &cpo = s:save_cpo
" }}}