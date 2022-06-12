" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
