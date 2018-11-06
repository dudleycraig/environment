# environment

A personal environment based within ubuntu 18.04,
primarily utilizing VIM, TMUX, ZSH, POWERLINE and SOLARIZED themes

requires "Source Code Pro for Powerline" as font.

## installation from ubuntu 18.04 server

> sudo apt-get update

> sudo apt-get upgrade

> sudo apt-get dist-upgrade


> sudo apt-get install git 


> sudo apt-get install xorg fluxbox xdm


> sudo apt-get install default-jdk


> sudo apt-get install nodejs npm


> sudo apt-get install libncurses5-dev python-dev python3-dev liblua5.3-dev lua5.3 libperl-dev

check python3 --version for submitting --with-python3-config-dir argument

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







