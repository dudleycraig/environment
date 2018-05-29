set runtimepath+=/home/dudley/.vim/bundle/Vundle.vim,/home/dudley/.vim/colors,/home/dudley/.vim/bundle/vim-snippets/snippets,/usr/share/vim/vim80, 
set nocompatible

"##############################################################################
" NOTE: turn off filetype before running vundle
filetype off
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"##############################################################################


"******************************************************************************
" MISC 
"******************************************************************************
syntax enable
syntax on
let mapleader=","       " mapped key for <leader>
let maplocalleader=","
set shell=/bin/bash
set exrc                " enable per directory vimrc files
set secure              " disable unsafe commands in local .vimrc files
" set completeopt-=preview


"******************************************************************************
" EDITOR
"******************************************************************************
set encoding=utf-8
set backspace=indent,eol,start
" set whichwrap+=<,>,h,l " backspace config
set number " line numbers are always displayed
set nowrap " lines do not wrap on page
" set ruler
" set cursorline        " a vertical rule
" set cursorcolumn      " a horizontal rule
" set gcr=a:blinkon0
" set ttyfast
set ttimeoutlen=50


"******************************************************************************
" SAVING
"******************************************************************************
" set autoread          " reload file when changed outside of current buffer 

" NOTE: save as root after the fact
" cmap w!! w !sudo tee > /dev/null % 


"******************************************************************************
" BACKUPS 
"******************************************************************************
" set nobackup
set writebackup         " switch backups on, if on it's pretty irritating editing via ftp/ssh
set noswapfile          " toggle backups on


"******************************************************************************
" BUFFERS
"******************************************************************************
" set clipboard=unnamedplus " copy and paste to system clipboard

nnoremap gp :bp<CR>     " move to the previous buffer with gp
nnoremap gn :bn<CR>     " move to the next buffer with gn
nnoremap gl :ls<CR>     " list all possible buffers with gl
nnoremap gb :ls<CR>:b   " list all possible buffers with gb and accept a new buffer argument [1]


"******************************************************************************
" ERRORS 
"******************************************************************************
set noerrorbells
set visualbell t_vb=    " turn off error beep/flash
set novisualbell        " turn off visual bell


"******************************************************************************
" TABS 
"******************************************************************************
" set smarttab
set expandtab           " spaces instead of tabs
" set noexpandtab       " tabs instead of spaces
set tabstop=3           " tabs are 4 columns, no bearing on character used 
set shiftwidth=3        " how many columns text will indent when using operations
" set softtabstop=2     " depends on tabstop and expandtab,


"******************************************************************************
" AUTOCOMPLETE 
"******************************************************************************
set wildmenu
set wildmode=list:longest,full


"******************************************************************************
" INDENTATION 
"******************************************************************************
" set cindent           " indent files according to 'c' language
" set autoindent
" set smartindent

" Plugin 'junegunn/vim-easy-align'
" xmap ga <Plug>(EasyAlign) " Start interactive EasyAlign in visual mode (e.g. vipga)
" nmap ga <Plug>(EasyAlign) " Start interactive EasyAlign for a motion/text object (e.g. gaip)


"******************************************************************************
" SEARCH 
"******************************************************************************
set incsearch           " incremental search
set hlsearch            " highlighted search results
set laststatus=2        " always display status line at bottom of window
" set ls=2              " always show filename at bottom of window
" set statusline+=%F    " always show full path of current line in statusbar
" set ignorecase        " ignore case when searching
" set smartcase         " ignore case when searching
" set magic             " magic for regular expressions
" set showmatch         " show matching brackets/parenthesis
set matchtime=0         " don't blink when matching


"******************************************************************************
" FOLDING 
"******************************************************************************
set foldmethod=indent   " fold based on indent
set foldnestmax=10      " deepest fold is 10 levels
set nofoldenable        " dont fold by default
set foldlevel=1         " nested folding level 


"******************************************************************************
" NAVIGATION
"******************************************************************************
Plugin 'scrooloose/nerdTree'
" nmap <leader>d :NERDTreeToggle<CR>


"******************************************************************************
" TABS/WINDOWS/PANES 
"******************************************************************************
set splitright

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'jpalardy/vim-slime'
let g:slime_target = "tmux"


"******************************************************************************
" HELP 
"******************************************************************************
autocmd FileType help wincmd L " place help split on left of current pane


"******************************************************************************
" THEMES
"******************************************************************************
set t_Co=256
set background=dark
" colorscheme nightly

Plugin 'lokaltog/vim-powerline'

Plugin 'altercation/vim-colors-solarized'
" NOTE: bashrc 'export TERM=xterm-256color' is required for console. COLORS, SOLARIZED -required before declaring colorscheme
let g:solarized_termtrans=1
let g:solarized_termcolors=256
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"

" NOTE: colorscheme definition must come after solarized properties are set
colorscheme solarized

"******************************************************************************
" STATUS LINE 
"******************************************************************************
set cmdheight=1         " number of lines to use in status bar 
set ruler               " show location of cursor all the time in lower right of window
set showcmd             " show last command used with vim
set showmode            " always display current mode of vim
set ls=2                " always show status bar
set scrolloff=5         " keep some more lines for scope

Plugin 'vim-airline/vim-airline-themes'

" NOTE: airline requires the OS to have the powerline fonts (https://github.com/powerline/fonts) 
Plugin 'vim-airline/vim-airline'
let g:airline_powerline_fonts=1
let g:airline_solarized_bg='dark'
let g:airline_theme='solarized'
let g:airline#extensions#tagbar#enabled=1
let g:airline#extensions#tagbar#flags='f'
let g:airline_enable_branch=1
let g:airline#extensions#branch#enabled=1


"******************************************************************************
" GUI 
"******************************************************************************
" set guioptions-=T
" set guioptions-=m
" set tabpagemax=30
" default number open tabs is 10
" set showtabline=2
" always show tabs
" set stal=2
" set guitablabel=%{GuiTabLabel()}


"******************************************************************************
" SNIPPETS
"******************************************************************************
Plugin 'MarcWeber/vim-addon-mw-utils'

Plugin 'tomtom/tlib_vim'

Plugin 'garbas/vim-snipmate'
let g:snipMate={}
" let g:snipMate.override=1

" Plugin 'SirVer/ultisnips'
" let g:UltiSnipsSnippetDirectories=["/home/dudley/.vim/snippets"]
" let g:UltiSnipsSnippetDir="/home/dudley/.vim/snippets"
" let g:UltiSnipsExpandTrigger="<tab>" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsEditSplit="vertical"

Plugin 'honza/vim-snippets'


"******************************************************************************
" GIT 
"******************************************************************************
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'


"******************************************************************************
" CLOJURE
"******************************************************************************
autocmd BufNewFile,BufRead *.clj set syntax=clojure
autocmd FileType clojure colorscheme solarized
autocmd FileType clojure set expandtab tabstop=2 shiftwidth=2 
autocmd FileType clojure setlocal lispwords+=describe,it,testing,facts,fact,provided
" autocmd Syntax clojure EnableSyntaxExtension

Plugin 'vim-syntastic/syntastic'
autocmd FileType clojure set statusline+=%#warningmsg#
autocmd FileType clojure set statusline+=%{SyntasticStatuslineFlag()}
autocmd FileType clojure set statusline+=%*
autocmd FileType clojure let g:syntastic_always_populate_loc_list = 1
autocmd FileType clojure let g:syntastic_auto_loc_list = 1
autocmd FileType clojure let g:syntastic_check_on_open = 1
autocmd FileType clojure let g:syntastic_check_on_wq = 0

Plugin 'guns/vim-clojure-static'
autocmd FileType clojure let g:clojure_syntax_keywords={'clojureMacro': ["defproject", "defcustom"], 'clojureFunc': ["string/join", "string/replace"]}
autocmd FileType clojure let g:clojure_maxlines=100
autocmd FileType clojure let g:clojure_align_multiline_strings=0
autocmd FileType clojure let g:clojure_align_subforms=0
autocmd FileType clojure let g:clojure_fuzzy_indent=1 
autocmd FileType clojure let g:clojure_fuzzy_indent_patterns=['^with', '^def', '^let']
autocmd FileType clojure let g:clojure_align_multiline_strings=1

Plugin 'kien/rainbow_parentheses.vim'
" autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax clojure RainbowParenthesesLoadRound
autocmd Syntax clojure RainbowParenthesesLoadSquare
autocmd Syntax clojure RainbowParenthesesLoadBraces
autocmd FileType clojure RainbowParenthesesActivate
autocmd Syntax * RainbowParenthesesLoadRound 

" Plugin 'tpope/vim-commentary'

" Plugin 'mitsuhiko/vim-sparkup'

" Plugin 'fisadev/FixedTaskList.vim'

Plugin 'tpope/vim-fireplace'

" Plugin 'tpope/vim-salve'

Plugin 'guns/vim-clojure-highlight'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-repeat'

" Plugin 'vim-scripts/paredit.vim' " either sexp or this, preferably sexp

Plugin 'guns/vim-sexp'

Plugin 'tpope/vim-sexp-mappings-for-regular-people'

" Plugin 'scrooloose/syntastic'

Plugin 'venantius/vim-eastwood'

" Plugin 'ctrlpvim/ctrlp.vim'


"******************************************************************************
" JAVASCRIPT
"******************************************************************************


"******************************************************************************
" HTML/XML 
"******************************************************************************
Plugin 'geoffharcourt/vim-matchit'


"******************************************************************************
" PHP
"******************************************************************************


"******************************************************************************
" BASH
"******************************************************************************


"******************************************************************************
" JAVA 
"******************************************************************************
" Plugin 'idanarye/vim-vebugger'

" Plugin 'dica-developer/vim-jdb'

" Plugin 'shougo/vimproc'

" Plugin 'joonty/vdebug'


"##############################################################################
" NOTE: turn on filetype after running vundle
call vundle#end()
filetype plugin indent on
"##############################################################################


"******************************************************************************
" CUSTOM FUNCTIONALITY
"******************************************************************************
let &colorcolumn="80,".join(range(80,999),",")
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR> " remove trailing whitespace


"******************************************************************************
" CUSTOM FUNCTIONS
"******************************************************************************


