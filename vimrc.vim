filetype plugin indent on
syntax on

au BufRead,BufNewFile *.soar setfiletype soar
au BufRead,BufNewFile *.launch setfiletype xml
au BufRead,BufNewFile *.XML setfiletype xml
au BufRead,BufNewFile gitconfig setfiletype gitconfig

set nocompatible
set number
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set scrolloff=5
set laststatus=2

set ignorecase
set smartcase

" Folding
set foldmethod=indent
set nofoldenable

" Colorscheme
set t_Co=256
colorscheme vividchalk

" Highlighting
set hlsearch
nnoremap <C-k> :set cursorline!<cr>

" auto-complete
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"set ofu=syntaxcomplete#Complete
"set completeopt=longest,menuone
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"    \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"    \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

call pathogen#infect() 

" Toggle line numbers between absolute and relative
function! NumberToggle()
    if(&relativenumber == 1)
        set number
    else
        set relativenumber
    endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

" Plugin toggle bindings
nnoremap <C-p> :RainbowParenthesesToggle<cr>

" Brace auto-completion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

" Eclim util mappings
nnoremap <silent> <leader>s :SwapWords<cr>
