" This is standard pathogen and vim setup
set nocompatible
set number
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set smarttab
set scrolloff=5
call pathogen#infect() 
syntax on
filetype plugin indent on

" vimclojure stuff.
let vimclojure#FuzzyIndent=1
let vimclojure#HighlightBuiltins=1
let vimclojure#HighlightContrib=1
let vimclojure#DynamicHighlighting=1
let vimclojure#ParenRainbow=1
let vimclojure#WantNailgun = 1
let vimclojure#NailgunClient = $HOME . "/.vim/lib/vimclojure-nailgun-client/ng"
