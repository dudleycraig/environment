# environment

A personal environment based within ubuntu 18.04,
primarily utilizing VIM, TMUX, ZSH, POWERLINE and SOLARIZED themes

requires "Source Code Pro for Powerline" as font.

## installation from ubuntu 18.04 server

### update system 
> sudo apt-get update

> sudo apt-get upgrade

> sudo apt-get dist-upgrade

### utilities 
> sudo apt-get install git wget curl unzip cmake xclip

### git
> sudo apt-get install git

> ssh-keygen -t rsa -b 4096 -C "dudleycraig@gmail.com"
give unique key name to generated keys

should have two files, unique-key-name and unique-key-name.pub

> ssh-add ~/.ssh/unique-key-name

> xclip < ~/.ssh/unique-key-name.pub

finally paste unique-key-name.pub to github account


### languages
> sudo apt-get install default-jdk

> sudo apt-get install nodejs npm

> sudo apt-get install python-dev python3-dev python-pip

> sudo apt-get install liblua5.3-dev lua5.3 

> sudo apt-get install libperl-dev

> sudo apt-get install libclang-6.0-dev libclang-common-6.0-dev libclang-dev

### vim
check python3 --version for submitting --with-python3-config-dir argument

> sudo apt-get install libncurses5-dev

> cd ~

> git clone https://github.com/vim/vim.git

> cd vim

> ./configure                   \
>    --with-features=huge       \
>    --enable-multibyte         \
>    --enable-perlinterp=yes    \
>    --with-tlib=ncurses        \
>    --disable-nls              \
>    --enable-pythoninterp=yes  \
>    --enable-python3interp=yes \
>    --with-python3-config-dir=/usr/lib/python3.6/config/config-3.6m-x86_64-linux-gnu/ \
>    --enable-cscope            \
>    --enable-gui=no            \
>    --without-x                \
>    --enable-fontset           \
>    --enable-largefile         \
>    --disable-netbeans         \
>    --with-compiledby="dudley" \
>    --enable-fail-if-missing

> sudo make VIMRUNTIMEDIR=/usr/share/vim/vim81

> make install

> sudo apt-get install -f

> sudo ln -s /usr/local/share/vim /usr/share/vim

#### vim::altercation/vim-colors-solarized
> cd ~/.vim/bundle/vim-colors-solarized/colors && mv solarized.vim ~/.vim/colors/

#### vim::vallorric/YouCompleteMe
> cd ~/.vim/bundle/YouCompleteMe && install.py --java-completer --clang-completer --system-libclang

#### vim::eslint
> npm install — g          \
>   eslint-config-airbnb   \
>   eslint-plugin-import   \
>   eslint-plugin-react    \
>   eslint-plugin-jsx-a11y \
>   babel-eslint           \
>   eslint
or
> cd my-project
> npm install --save-dev   \
>   eslint-config-airbnb   \
>   eslint-plugin-import   \
>   eslint-plugin-react    \
>   eslint-plugin-jsx-a11y \
>   babel-eslint           \
>   eslint

> vim ~/.eslintrc.json
or
> vim my-project/.eslintrc.json
```
{
   “extends”: “airbnb”,
   “env”: {
       “es6”: true
   },
   "parserOptions": {
    "sourceType": "module"
   }
}
```

> vim my-project/.vimrc
```
setlocal expandtab tabstop=3 shiftwidth=3 textwidth=80
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" syntastic
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = 'node_modules/.bin/eslint --config .eslintrc.json --ignore-path .eslintignore '

" w0rp/ale
" let g:ale_javascript_eslint_use_global=0
" let g:ale_javascript_eslint_executable='node_modules/.bin/eslint'
" let g:ale_javascript_eslint_options='--config .eslintrc.json --ignore-path .eslintignore'
```

### zsh
> sudo apt-get install zsh dconf-cli

> cd ~/

> sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

> git clone https://github.com/KuoE0/oh-my-zsh-solarized-powerline-theme.git

> vim ~/.zshrc

### tmux
> sudo apt-get install tmux


### xwindows 
> sudo apt-get install xorg fluxbox xdm libglib2.0-bin

> cd ~

> wget http://www.tenr.de/styles/archives/black.tar.bz2

> tar -xvf ./black.tar.bz2

> cp -rvf ./black ~/.fluxbox/styles/

> vim ~/.fluxbox/styles/black/theme.cfg

update fonts to source-code-pro
> vim ~/.fehbg

remove reference to background image
> vim ~/.fluxbox/startup 

insert "xsetroot -solid gray7"

insert "xset r rate 200 60

add following lines for dbus ... 
```
if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then 
   eval `dbus-launch --sh-syntax --exit-with-session` 
   export DBUS_SESSION_BUS_ADDRESS 
fi 
```

> vim ~/.bashrc

insert "xsetroot -solid gray7"

insert "xset r rate 200 60


> vim ~/.zshrc

insert "xsetroot -solid gray7"

insert "xset r rate 200 60

### fonts
> mkdir ~/.fonts

> wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip

> wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf

> wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

> unzip 1.050R-it.zip

> cp -rvf source-code-pro-*-it/OTF/*.otf ~/.fonts

> cp -rvf PowerlineSymbols.otf ~/.fonts/

> mkdir -p .config/fontconfig/conf.d

> fc-cache -f -v

> cp -rvf 10-powerline-symbols.conf ~/.config/fontconfig/conf.d

> sudo apt-get install fonts-powerline

### terminal
> sudo add-apt-repository ppa:h-realh/roxterm

> sudo apt-get update 

> sudo apt-get install roxterm

customize: Preferences -> Current Profile -> Appearance -> ...

> git clone https://github.com/seebi/dircolors-solarized

> cp dircolors-solarized/dircolors.256dark ~/.dircolors && rm -rvf dircolors-solarized

> wget https://gist.githubusercontent.com/weakish/923039/raw/fb6ba2715c87612f67a07f8e15e3e4c74a9d8c5a/solatarized-dark

> mkdir ~/.config/roxterm.sourceforge.net/Colours

> cp solatarized-dark ~/.config/roxterm.sourceforge.net/Colours/
change theme within roxterm





