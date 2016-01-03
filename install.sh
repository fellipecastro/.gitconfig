#!/bin/bash
rm -f ~/.gitconfig
rm -f ~/.config
rm -f ~/.zsh_aliases
rm -f ~/.zsh_functions
rm -rf ~/dotfiles

git config --global user.name "$NAME"
git config --global user.email "$EMAIL"

git clone https://github.com/fellipecastro/dotfiles.git ~/dotfiles

ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.config ~/.config
ln -s ~/dotfiles/.zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/.zsh_functions ~/.zsh_functions

source  ~/.zsh_aliases
source  ~/.zsh_functions
