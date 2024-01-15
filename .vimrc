
" Move current line up or down with Ctrl+k and Ctrl+j
nnoremap <C-k> :m .-2<CR>==
nnoremap <C-j> :m .+1<CR>==

" Disable arrow keys in normal mode
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

" Disable arrow keys in insert mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Disable arrow keys in visual mode
vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>

" Bindings to jump to the next or previous empty line
nnoremap <silent> J :call SearchEmptyLine('down')<CR>
nnoremap <silent> K :call SearchEmptyLine('up')<CR>

" Function to search for the next or previous empty line
function! SearchEmptyLine(direction)
    if a:direction == 'down'
        execute 'normal! }'
    elseif a:direction == 'up'
        execute 'normal! {'
    endif
endfunction

" Map yanking to use the system clipboard in visual mode
vnoremap y "+y
