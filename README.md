# myvimfiles
Ana Bastos vim files ⌨️✨❤️

Based on [derekstavis's vimfiles](https://github.com/derekstavis/vimfiles) which are based on [greenboxal's vimfiles](https://github.com/greenboxal/vimfiles) which are based on [Pedro Franceschi's vimfiles](https://github.com/pedrofranceschi/vimfiles) but removing a lot of stuff that I don't need.

#### Installing (step by step)

First, you need to install [Fira Code](https://github.com/tonsky/FiraCode) font for Powerline and common character ligatures.

Go to your home directory:

    cd ~

Clone my vimfiles repo:


    git clone --recursive https://github.com/anabastos/myvimfiles.git

Rename the repo to .vim in your home directory:

    mv myvimfiles ~/.vim

Link vimrc and gvimrc to your home directory:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc


Open Vim:

	vim

(if you use MacVim):

	mvim

Install bundles by typing

	:PluginInstall

Execute plugin specific installation

	cd ~/.vim
	bash ./install.sh

Restart vim and enjoy! :)
