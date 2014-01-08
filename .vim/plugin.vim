" neocomplecache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1
inoremap <expr><CR>  pumvisible() ? neocomplcache#close_popup() : "<CR>"

" Unite.vim
let g:unite_enable_start_insert = 1
let g:unite_source_file_mru_limit = 20

" Unbind <C-e> in unite
augroup test
  autocmd!
  autocmd FileType unite inoremap <buffer> <C-e> <Esc>
augroup END

" vim-markdown
let g:vim_markdown_initial_foldlevel=2

" vim-tags
let g:vim_tags_project_tags_command = "/usr/local/bin/ctags -R {OPTIONS} {DIRECTORY} 2>/dev/null"
let g:vim_tags_gems_tags_command = "/usr/local/bin/ctags -R {OPTIONS} `bundle show --paths` 2>/dev/null"