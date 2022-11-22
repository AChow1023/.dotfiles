# My Dotfiles
These are my dotfile configuration files for different software in Bash.
## .vimrc
This is my custom .vimrc configuration for Vim.
## .bashrc
This is my custom .bashrc configuration for Bash.
##Explanation
I have a bin and etc directory in my .dotfiles folder. The bin has two scripts, linux.sh and cleanup.sh. The linux.sh script first checks if the operating system is Linux, if it is not then it will just exit. Then it will create a directory named .TRASH. It then will create a file named .vimrc, if it does not exit, in the home directory. It then redirects the contents of etc/vimrc to the .vimrc in the home directory. It then adds the line "source ~/.dotfiles/etc/bashrc custom" to the end of the .bashrc file. The cleanup.sh script basically reverts everything that was done in linux.sh. It first removes the .vimrc file. It then replaces the "source ~/.dotfiles/etc/bashrc custom" line from the .bashrc file. It then removes the .TRASH directory.

In the etc directory I have a bashrc custom file. I also have a vimrc in it. These two use aliases in itself.
There is also a .gitignore file that tells the GitHub not to track and ignore some files in directories.
The Makefile just runs both linux.sh and cleanup.sh together with the Linux target running the linux.sh and clean running cleanup.sh. The Linux target will take clean as a prerequisite.

