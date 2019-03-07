#!/bin/bash

function try_pacman()
{
    if type $1 &>/dev/null; then
        echo -e "${1} installed"
    else
        echo "${1} install..."
        pacman -S --noconfirm --color=auto $1
    fi
}

function install_()
{
    ###
    # for packman
    ###

    echo "mingw-w64-x86_64-toolchain install..."
    pacman -S --noconfirm --color=auto mingw-w64-x86_64-toolchain

    try_pacman winpty
    try_pacman git

    try_pacman vim

    # autotoolsをインストール
    try_pacman autoconf
    try_pacman automake

    try_pacman cmake
    try_pacman doxygen
    try_pacman tree
    try_pacman wget
    try_pacman w3m
    try_pacman man

    # キャッシュを消去
    echo
    pacman -Sc --noconfirm
}

echo "start install-msys2-apps...\\n"
install_

echo
echo "finished!!"
exit 0
