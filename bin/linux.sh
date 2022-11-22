#!/bin/bash
##creates the shebang

if ('uname' != 'Linux') ##checks if uname is equal to Linux. If not then print the error message into linuxsetup.log and exit
	{
		echo "Error: uname does not equal 'Linux'" >> linuxsetup.log
		exit
	}
mkdir -p .TRASH ##make .TRASH directory if not already made

if ( -d ~/vimrc)## checks if the file vimrc exists
	{
		mv vimrc .bup_vimrc ## changes vimrc to .bup_vimrc
		echo "vimrc was changed to .bup_vimrc" >> linuxsetup.log ##sends message that vimrc was changed to .bup_vimrc to linuxsetup.log
	}
cp -v etc/vimrc ~/.vimrc ##moves contents from one file to the other on ##moves contents from one file to the other onee
echo "source ~/.dotfiles/etc/bashrc custom" >> ~/.bashrc

