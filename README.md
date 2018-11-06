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
> sudo apt-get install git wget curl unzip 

### languages
> sudo apt-get install default-jdk
> sudo apt-get install nodejs npm
> sudo apt-get install python-dev python3-dev python-pip
> sudo apt-get install liblua5.3-dev lua5.3 
> sudo apt-get install libperl-dev

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
> make VIMRUNTIMEDIR=/usr/share/vim/vim81
> apt-get install checkinstall
> checkinstall

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
add following lines ... 
if test -z "$DBUS_SESSION_BUS_ADDRESS" ; then 
   eval `dbus-launch --sh-syntax --exit-with-session` 
   export DBUS_SESSION_BUS_ADDRESS 
fi 

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


