#!/bin/bash/
mkdir tmp
cd tmp
wget https://aur.archlinux.org/packages/ta/tagainijisho/tagainijisho.tar.gz
tar -xzvf tagainijisho.tar.gz
cd ./tagainijisho
makepkg -s  

