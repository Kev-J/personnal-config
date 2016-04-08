syntax on
filetype on
color elflord

set expandtab
set shiftwidth=4
set tabstop=4
set autoindent

" Taglist
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Process_File_Always = 1

autocmd FileType make set noexpandtab

" Match extra whitespaces and spaces before tabs
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

let g:listToggled = 0
function! ToggleList()
    if g:listToggled
        set listchars=
        set nolist
        let g:listToggled = 0
    else
        set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
        set list
        let g:listToggled = 1
    endif
endfunction

nnoremap <silent> <F5> :execute ToggleList() <CR>
nnoremap <silent> <F8> :TlistToggle<CR>
