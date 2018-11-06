"******************************************************************************
" COMPILATION 
"******************************************************************************
" ./configure                   \
"    --with-features=huge       \
"    --enable-multibyte         \
"    --enable-perlinterp=yes    \
"    --with-tlib=ncurses        \
"    --disable-nls              \
"    --enable-pythoninterp=yes  \
"    --enable-python3interp=yes \
"    --with-python3-config-dir=/usr/lib/python3.6/config/config-3.6m-x86_64-cygwin \
"    --enable-cscope            \
"    --enable-gui=no            \
"    --without-x                \
"    --enable-fontset           \
"    --enable-largefile         \
"    --disable-netbeans         \
"    --with-compiledby="dudley" \
"    --enable-fail-if-missing


"******************************************************************************
" GLOBAL 
"******************************************************************************
set runtimepath+=/usr/share/vim/vim80,
" set runtimepath+=/home/dudley/.vim/bundle/Vundle.vim,
set runtimepath+=/home/dudley/.vim/bundle/vim-snippets/snippets,
set runtimepath+=/home/dudley/.vim/colors,
set runtimepath+=/home/dudley/.vim/bundle/YouCompleteMe,
set runtimepath+=/home/dudley/.vim/bundle/eclim


"******************************************************************************
" PLUGIN MANAGER 
"******************************************************************************
" vundle
" NOTE: turn off filetype before running vundle
" filetype off
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" NOTE: turn on filetype after running vundle
" call vundle#end()
" filetype plugin indent on

" vim_plug
call plug#begin('~/.vim/bundle')
Plug 'powerline/powerline' 

" NOTE: bashrc 'export TERM=xterm-256color' is required for console. COLORS, SOLARIZED -required before declaring colorscheme
" NOTE: install and use "Source Code Pro for Powerline" font
" NOTE: solarized also comes with applications for terminal emulators (rxvt, term2, cygwin, putty, etc) and shells (bash/zsh, dir_colors)
" NOTE: tmux can acquire solarized theme via seebi/tmux-colors-solarized
Plug 'altercation/vim-colors-solarized'

" NOTE: airline requires the OS to have the powerline fonts (https://github.com/powerline/fonts) 
" NOTE: install and use "Source Code Pro for Powerline" font within terminal (rxvt, term2, cygwin, putty, etc)
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

Plug 'ctrlpvim/ctrlp.vim'

" Plug 'junegunn/vim-easy-align'

Plug 'https://github.com/adelarsq/vim-matchit'

" Plug 'sheerun/vim-polyglot'

Plug 'christoomey/vim-tmux-navigator'
Plug 'jpalardy/vim-slime'
" Plug 'scrooloose/nerdTree'

" Plug 'MarcWeber/vim-addon-mw-utils'
" Plug 'tomtom/tlib_vim'
" Plug 'garbas/vim-snipmate'
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Plug 'scrooloose/syntastic'
" https://zirho.github.io/2016/10/06/vim-syntastic-local/
" https://github.com/mantoni/eslint_d.js
" http://www.zsoltnagy.eu/use-eslint-like-a-pro-with-es6-and-react/
" Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'

" NOTE: requires #> apt-get install mono-xbuild, throws warnings on .vim/bundle/YouCompleteMe/install.py regarding xbuild, tho these can be ignored
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --java-completer --clang-completer --system-libclang --tern-completer'} " fuzzy search, code completion based off of tern, config in project/.tern-config

" JAVASCRIPT
" compile by #> cd ~/.vim/bundle/tern_for_vim && npm install
" NOTE: node environment installation (npm install -g tern) of tern is not required, only the bundle compiled executables
Plug 'ternjs/tern_for_vim', {'do': 'npm install', 'for':['javascript', 'jsx', 'json']}
" Plug 'pangloss/vim-javascript', {'for':['javascript', 'jsx', 'json']} " syntax highlighting and indentation
" Plug 'elzr/vim.json' " syntax highlighting
" Plug 'mxw/vim-jsx', {'for':['javascript', 'jsx', 'json']} " syntax highlighting
" Plug 'mtscout6/syntastic-local-eslint.vim', {'for':['javascript']}

" CLOJURE
Plug 'guns/vim-clojure-static', {'for':['clojure']}
Plug 'kien/rainbow_parentheses.vim', {'for':['clojure']}
" Plug 'tpope/vim-commentary', {'for':['clojure']}
" Plug 'mitsuhiko/vim-sparkup', {'for':['clojure']}
" Plug 'fisadev/FixedTaskList.vim', {'for':['clojure']}
Plug 'tpope/vim-fireplace', {'for':['clojure']}
Plug 'venantius/vim-cljfmt', {'for':['clojure']}
Plug 'guns/vim-clojure-highlight', {'for':['clojure']}
Plug 'tpope/vim-surround', {'for':['clojure']}
Plug 'tpope/vim-repeat', {'for':['clojure']}
" Plug 'vim-scripts/paredit.vim', {'for':['clojure']} " either sexp or this, preferably sexp
Plug 'guns/vim-sexp', {'for':['clojure']}
Plug 'tpope/vim-sexp-mappings-for-regular-people', {'for':['clojure']}
Plug 'venantius/vim-eastwood', {'for':['clojure']}

call plug#end()

"******************************************************************************
" GLOBAL SETTINGS 
"******************************************************************************
set nocompatible
set shell=/usr/bin/zsh
let mapleader="," " mapped key for <leader>
let maplocalleader=","
set exrc " enable per directory vimrc files
set secure " disable unsafe commands in local .vimrc files


" autocmd BufReadPre,BufNewFile * let b:did_ftplugin=1 " ignore default filetype plugins
filetype plugin indent on " import config files by file type under folders .vim/ftplugin and .vim/ftdetect
autocmd BufNewFile,BufRead *.js,*.json set filetype=javascript
autocmd BufNewFile,BufRead *.clj,*.cljs,*.cljc set filetype=clojure
autocmd BufNewFile,BufRead *.php,*.phtml set filetype=php


syntax enable
autocmd BufNewFile,BufRead *.js,*.json set syntax=javascript
autocmd BufNewFile,BufRead *.clj,*.cljs,*.cljc set syntax=clojure
autocmd BufNewFile,BufRead *.php,*.phtml set syntax=php

autocmd FileType help wincmd L " place help split on left of current pane


set encoding=utf-8
set backspace=indent,eol,start
" set whichwrap+=<,>,h,l " backspace config
set number " line numbers are always displayed
set nowrap " lines do not wrap on page
" set ruler
" set cursorline " a vertical rule
" set cursorcolumn " a horizontal rule
" set gcr=a:blinkon0
" set ttyfast
set ttimeoutlen=50
" set completeopt-=preview
setlocal textwidth=80


" set autoread " reload file when changed outside of current buffer 
" NOTE: save as root after the fact
" cmap w!! w !sudo tee > /dev/null % 


" set nobackup when ftp'ng
set writebackup " switch backups on, if on it's pretty irritating editing via ftp/ssh
set noswapfile " toggle backups on


" set clipboard=unnamedplus " copy and paste to system clipboard
nnoremap gp :bp<CR> " move to the previous buffer with gp
nnoremap gn :bn<CR> " move to the next buffer with gn
nnoremap gl :ls<CR> " list all possible buffers with gl
nnoremap gb :ls<CR>:b " list all possible buffers with gb and accept a new buffer argument [1]


set noerrorbells
set visualbell t_vb=0 " turn off error beep/flash
set novisualbell " turn off visual bell


" set smarttab
set expandtab " spaces instead of tabs
" set noexpandtab " tabs instead of spaces
set tabstop=3 " tabs are 4 columns, no bearing on character used 
set shiftwidth=3 " how many columns text will indent when using operations
" set softtabstop=2 " depends on tabstop and expandtab,


set omnifunc=syntaxcomplete#Complete
set wildmode=list:longest,full


" set cindent " indent files according to 'c' language
" set autoindent
" set smartindent


set incsearch " incremental search
set hlsearch " highlighted search results
" set ls=2 " always show filename at bottom of window
" set ignorecase " ignore case when searching
" set smartcase " ignore case when searching
" set magic " magic for regular expressions
" set showmatch " show matching brackets/parenthesis
set matchtime=0 " don't blink when matching


set foldmethod=indent " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " dont fold by default
set foldlevel=1 " nested folding level 


set splitright
set splitbelow


set t_Co=256
set t_ut=y
set background=dark
" colorscheme nightly

" set statusline+=%F " always show full path of current line in statusbar
set statusline="" " statusline concatenated via syntastic settings
set laststatus=1 " always show statusline
set cmdheight=1 " number of lines to use in status bar 
set showcmd " show last command used with vim
set showmode " always display current mode of vim
set ruler " show location of cursor all the time in lower right of window
set scrolloff=5 " keep some more lines for scope
" NOTE: status line settings overridden by both syntastic and airline

" set guioptions-=T
" set guioptions-=m
" set tabpagemax=30
" default number open tabs is 10
" set showtabline=2
" always show tabs
" set stal=2
" set guitablabel=%{GuiTabLabel()}


" let &colorcolumn="81,".join(range(81,999),",")
" nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR> " remove trailing whitespace


"******************************************************************************
" PLUGIN CONFIGURATION 
"******************************************************************************

" easy-align
" xmap ga <Plugin>(EasyAlign) " Start interactive EasyAlign in visual mode (e.g. vipga)
" nmap ga <Plugin>(EasyAlign) " Start interactive EasyAlign for a motion/text object (e.g. gaip)


" scrooloose/nerdTree
" nmap <leader>d :NERDTreeToggle<CR>

" netrw (vim native file navigation)
let g:netrw_winsize = -28
let g:netrw_liststyle = 3
let g:netrw_sort_sequence = '[\/]$,*'
let g:netrw_browse_split = 3


" jpalardy/vim-slime
let g:slime_target="tmux"


" garbas/vim-snipmate
" let g:snipMate={}
" let g:snipMate.override=1


" SirVer/ultisnips
" let g:UltiSnipsSnippetDirectories=["/home/dudley/.vim/snippets"]
" let g:UltiSnipsSnippetDir="/home/dudley/.vim/snippets"
" let g:UltiSnipsExpandTrigger="<tab>" " Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsEditSplit="vertical"


" airblade/vim-gitgutter
highlight GitGutterAdd ctermfg=NONE ctermbg=235 cterm=NONE
highlight GitGutterChange ctermfg=NONE ctermbg=235 cterm=NONE
highlight GitGutterDelete ctermfg=NONE ctermbg=235 cterm=NONE
highlight GitGutterChangeDelete ctermfg=NONE ctermbg=235 cterm=NONE


" blueyed/vim-diminactive
" hi ColorColumn ctermfg=8 ctermbg=0


" altercation/vim-colors-solarized
let g:solarized_termtrans=1
let g:solarized_termcolors=256
" let g:solarized_contrast="high"
" let g:solarized_visibility="high"
" NOTE: colorscheme definition must come after solarized properties are set
colorscheme solarized
highlight clear SignColumn


" vim-airline/vim-airline, vim-airline-themes
" let g:airline_powerline_fonts=1
" let g:airline_solarized_bg='dark'
" let g:airline_theme='solarized'
" let g:airline_enable_branch=1
" let g:airline_enable_syntastic=1
" let g:airline_enable_fugitive=1
" let g:airline_theme='dark'
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#formatter='default'
" let g:airline#extensions#tagbar#enabled=1
" let g:airline#extensions#tagbar#flags='f'
" let g:airline#extensions#branch#enabled=1


" vim-syntastic/syntastic
" let g:syntastic_loc_list_height=3
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_auto_loc_list=1
" let g:syntastic_check_on_open=1
" let g:syntastic_check_on_wq=0
" let g:syntastic_enable_signs=1
" let g:syntastic_error_symbol='x'
" let g:syntastic_warning_symbol='!'
" let g:syntastic_style_error_symbol='|'
" let g:syntastic_style_warning_symbol='|'
" highlight SignColumn ctermfg=NONE ctermbg=235 cterm=NONE
" highlight SyntasticError ctermfg=160 ctermbg=NONE cterm=NONE
" highlight SyntasticWarning ctermfg=9 ctermbg=NONE cterm=bold,underline
" highlight SyntasticErrorSign ctermfg=160 ctermbg=NONE cterm=NONE
" highlight SyntasticWarningSign ctermfg=9 ctermbg=NONE cterm=NONE
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" HOWTO: debugging eslint: 
" https://medium.com/@hpux/vim-and-eslint-16fa08cc580f
" :SyntasticCheck eslint
" :mes
" let g:syntastic_debug=3 

" w0rp/ale
" let g:ale_sign_error = '●' 
" let g:ale_sign_warning = '.'


" Valloric/YouCompleteMe
" https://github.com/Valloric/YouCompleteMe#installation
" compile by #> cd ~/.vim/bundle/YouCompleteMe/ && ./install.py --all --system-libclang for cygwin
let g:ycm_autoclose_preview_window_after_completion=1

