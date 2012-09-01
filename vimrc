"-----------------------------------------------------------------------------
"---General Options-----------------------------------------------------------
"-----------------------------------------------------------------------------
set nocompatible                        "disable vi compatibility
set backspace=indent,eol,start          "make sure backspace works
set history=1000                        "remember more commands and search history
set undolevels=1000                     "remember more undo levels
"Editor Appearance
set title                               "change terminal title to show what we are doing
set number                              "show line numbers
set nowrap                              "turn off word wrap
set linebreak                           "wrap around words, turn off list to use
set colorcolumn=81                      "highlight column 81 to show long lines
set showmatch                           "highlight matching parens
set ruler                               "show current position in file
set list listchars=tab:>.,trail:.,extends:#,nbsp:.      "Show bad whitespace
"Search Settings
set incsearch                           "will show incremental search, like in firefox and emacs
set smartcase                           "ignore CASE case if search is all lower case, otherwise case sensitive
set hlsearch!                           "disable highlighting every entry by default
set autochdir                           "change the active working directory for gvim to curr directory
set wildignore=*.swp,*.bak,*.pyc,*.class,*.aux,*.hi     "Ignore files type when auto-completing

"-----------------------------------------------------------------------------
"--Filetype and Indentation Options-------------------------------------------
"-----------------------------------------------------------------------------
syntax enable                           "enable syntax highlighting
set expandtab smarttab autoindent       "Only use spaces *ignores flamewar*
set tabstop=4 shiftwidth=4              "default indentation
filetype plugin indent on               "enable special per language features
autocmd filetype lisp set lisp tabstop=2 shiftwidth=2
autocmd filetype tex set spell autowrite textwidth=80 makeprg=latexmk\ -pdf\ %
autocmd filetype haskell set tabstop=2 shiftwidth=2
autocmd BufNewFile,BufRead *.mkd set tabstop=2 shiftwidth=2 textwidth=80
"Haskell Syntax Highlight Options
let hs_highlight_delimiters=1
let hs_highlight_boolean=1
let hs_highlight_types=1
let hs_highlight_more_types=1
"TODO: Add stuff about compilers and errorformat shit. Read more of alex's

"-----------------------------------------------------------------------------
"--Keyboard Shortcuts---------------------------------------------------------
"-----------------------------------------------------------------------------
"Expands {{ to C syntax braces
ab {{ {<cr>}<esc>kA
"Map OmniComplete to to C-Space
inoremap <C-space> <C-x><C-o>
"Ignore F1 because its next to Esc
map <F1> <nop>
"Save myself from pressing the shift key
nmap ; :
"Save myself from pressing the Esc Key
imap jj <esc>
"C-Enter makes new line
imap <c-cr> <esc>o
nmap <c-cr> o<esc>
imap <c-s-cr> <esc>O
nmap <c-s-cr> O<esc>
"If I forgot to sudo before editng a file I don't own
cmap w!! w !sudo tee % >/dev/null
" Press F5 to run make
map <F5> :mak<cr>

"-----------------------------------------------------------------------------
"--Miscellaneous Options------------------------------------------------------
"-----------------------------------------------------------------------------
"Ominiomplete Options
set ofu=syntaxcomplete#Complete         "Enables Omnicomplete Functionality
set tags+=~/.vim/tags/                  "Read from my Personal C Tags
set completeopt-=preview                "Disable preview of function
"HTML Output Options
let html_use_css = 1                    "Use CSS instead of font tags
let html_no_pre = 1                     "Remove pre tags, use div

set t_Co=256
colo elflord
