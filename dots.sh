#!/bin/sh

load_vim () {
	cp home/.vim.rc ~/.vim.rc
	cp -r home/.vim/ ~/.vim
}

save_vim () {
	cp ~/.vim.rc home/
	cp -r ~/.vim/ home/
}

list_configs () {
	echo "(1) vim"
}

load () {
	echo "What to load?"
	list_configs
	read config
	if [ "$choice" == "1" ]; then
		load_vim	
	fi	
}

save () {
	echo "What to save?"
	list_configs
	read config
	if [ "$choice" == "1" ]; then
		save_vim
	fi	
}

echo "Do you want to export or import dotfiles"
echo "(1) Load"
echo "(2) Save"
read choice

if [ "$choice" == "1" ]; then
	load	
elif [ "$choice" == "2" ]; then
	save
else
	echo "Invalid option"
fi

