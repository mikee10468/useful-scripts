" pathogen line
execute pathogen#infect()
execute pathogen#helptags()
"
"
" Change default colors to 'torte' setting
colors torte
"
"

" Recommended general settings START
syntax on
filetype plugin indent on
set tabstop=4 shiftwidth=4 smarttab expandtab softtabstop=4
set autoindent number cursorline showmatch
" Recommended general settings END

" ===========================================================
" NERDTree BLOCK BEGIN ======================================
" ===========================================================
" For mouse click in NERDTree
:set mouse=a
let g:NERDTreeMouseMode=3 


" How can I open a NERDTree automatically when vim starts up?
autocmd vimenter * NERDTree

" How can I open a NERDTree automatically when vim starts up if no files were
" specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" How can I map a specific key or shortcut to open NERDTree?
map <C-n> :NERDTreeToggle<CR>

" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" ===========================================================
" NERDTree BLOCK END   ======================================
" ===========================================================

" ===========================================================
" syntastic BLOCK BEGIN   ===================================
" ===========================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ===========================================================
" syntastic BLOCK END   =====================================
" ===========================================================
