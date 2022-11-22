#!/bin/bash

rm -rf ~/.vimrc ## removes the .vimrc file from my home directory
sed -i 's/source ~/.dotfiles/etc/bashrc custom/ /g' ~/.bashrc ##replaces the line from .bashrc with an empty space
rm -rf ~/.TRASH ##removes the .TRASH file from my home directory
