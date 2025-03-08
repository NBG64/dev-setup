#!/bin/bash
echo "hello world"

#setup package manager variable

case $1 in
    "pacman")
        install_method="pacman -S"
        ;;
    "apt")
        install_method="apt install"
        ;;
esac

case $2 in 
    "sway")
        tiling_wm="sway"
        ;;
    "i3")
        tiling_wm="i3"
        ;;
    "")
        tiling_wm=""
        ;;
esac

$install_method gcc clang unzip zip vim cmake make ripgrep npm $tiling_wm
if [$tiling_wm != ""]; then
    source wm.sh
fi
source lua.sh
source python.sh
source nvim.sh
source angular.sh
