" project_zebu
" https://en.wikipedia.org/wiki/Zebu
" custom vim loot

" related reading
" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/


" Use bundles config {
    if filereadable(expand("~/.vimrc.bundles"))
        source ~/.vimrc.bundles
    endif
" }


" use space as leader
let mapleader = "\<Space>"

" format JSON
map <Leader>j !python -m json.tool<CR>

" format XML
map <Leader>x !tidy -xml -q -i<CR>

" always uses spaces instead of tab characters
set expandtab

" size of a hard tabstop
set tabstop=4
"
" size of an "indent"
set shiftwidth=4
"
" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4


" kill the arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
