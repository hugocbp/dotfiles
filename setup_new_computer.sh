#!/bin/bash

# Select current OS
OS="$(uname -s)" # Linux/Darwin
MAC=1 # Defaults to Mac
[ $OS == "Linux" ] && MAC=0 # Changes to Linux

# Prepare Mac
if $MAC; then
	# Dev Tools
	xcode-select --install
	# Homebrew
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
	apt install wget git
fi

# Install zsh
(($MAC)) && brew install zsh || apt install zsh

# Install oh-my-zsh
(($MAC)) && sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" \
		 || wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# Make zsh default
(($MAC)) && chsh -s /bin/zsh || chsh -s /usr/bin/zsh root

# Install terminals
(($MAC)) && brew cask install iterm2 || apt install tilda

# Install tmux

# Clone dotfiles
git clone git@github.com:hugocbp/dotfiles.git

# Install editors
## neovim
## vscode
## sublime (?)
## db editor (?)

# Install browsers
## Chrome
## Firefox

# Link files

#################
##  Dev Stuff  ##
#################

# Node

# Docker

# Python