filetype plugin indent on
syntax on

au BufRead,BufNewFile *.soar setfiletype soar
au BufRead,BufNewFile *.launch setfiletype xml
au BufRead,BufNewFile *.XML setfiletype xml
au BufRead,BufNewFile gitconfig setfiletype gitconfig

autocmd FileType soar set commentstring=#\ %s

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
set showcmd
set updatetime=1000

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
nnoremap <leader>_ :set cursorline!<cr>

" auto-complete
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"set ofu=syntaxcomplete#Complete
"set completeopt=longest,menuone
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"    \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"    \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

if !exists("g:pathogen_disabled")
    let g:pathogen_disabled = []
endif
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
let g:rbpt_colorpairs = [
    \ ['27',  'RoyalBlue3'],
    \ ['166', 'SeaGreen3'],
    \ ['39',  'DarkOrchid3'],
    \ ['124', 'firebrick3'],
    \ ['51',  'RoyalBlue3'],
    \ ['88',  'SeaGreen3'],
    \ ['230', 'DarkOrchid3'],
    \ ['22',  'firebrick3'],
    \ ['227', 'RoyalBlue3'],
    \ ['31',  'SeaGreen3'],
    \ ['214', 'DarkOrchid3'],
    \ ['27',  'firebrick3'],
    \ ['166', 'RoyalBlue3'],
    \ ['39',  'SeaGreen3'],
    \ ['124', 'DarkOrchid3'],
    \ ['51',  'firebrick3'],
    \ ]

au Syntax * RainbowParenthesesLoadBraces
nnoremap <C-p> :RainbowParenthesesToggle<cr>

" NERDTree configuration
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nnoremap <leader>n :NERDTreeToggle<CR>

" Brace auto-completion
inoremap {<CR>  {<CR>}<Esc>O
inoremap {}     {}<Left>

" Eclim util mappings
nnoremap <silent> <leader>s :SwapWords<cr>
nnoremap <silent> <leader>b :BuffersToggle<cr>
let g:EclimBrowser = 'lynx'
"let g:EclimSignLevel = 'warning'

" Fugitive configuration (if fugitive is not disabled)
"if index(g:pathogen_disabled, "vim-fugitive") == -1
"    set statusline=%<%f\ %h%m%r%{tagbar#currenttag('[%s]\ ','')}%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
"endif

" Airline options (statusbar plugin)
"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#whitespace#enabled = 0

" Splice options
let g:splice_initial_mode = "grid"
let g:splice_initial_layout_grid = 1

" Tagbar bindings
nnoremap <leader>t :TagbarToggle<CR>
let g:tagbar_autofocus = 1
"let g:tagbar_sort = 0
"let g:tagbar_show_linenumbers = -1

" indent-guides settings
let g:indent_guides_auto_colors = 0

" vim-better-whitespace bindings
nnoremap <leader>w :ToggleWhitespace<CR>

" Experimental clang-format bindings
nnoremap <leader>k :pyf /usr/share/vim/addons/syntax/clang-format-3.3.py<CR>
xnoremap <leader>k :pyf /usr/share/vim/addons/syntax/clang-format-3.3.py<CR>
inoremap <leader>k <ESC>:pyf /usr/share/vim/addons/syntax/clang-format-3.3.py<CR>i

" Remap increment so it isn't blocked by screen commands
nnoremap <C-k> <C-a>
nnoremap <C-j> <C-x>
