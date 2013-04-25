filetype plugin indent on
syntax on
au BufRead,BufNewFile *.soar setfiletype soar
au BufRead,BufNewFile *.launch setfiletype xml
set nocompatible
set number
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set scrolloff=5

" Highlighting
set hlsearch
hi CursorLine cterm=bold
nnoremap <C-k> :set cursorline!<cr>
"set cursorline

" auto-complete
"set ofu=syntaxcomplete#Complete
set completeopt=longest,menuone
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
    \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
    \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

call pathogen#infect() 


" vimclojure stuff.
let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1
let vimclojure#WantNailgun = 1
let vimclojure#NailgunClient = $HOME . "/.vim/lib/vimclojure-nailgun-client/ng"


function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>
nnoremap <C-p> :RainbowParenthesesToggle<cr>
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
