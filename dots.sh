#!/bin/sh

load_vim () {
	echo "Loading vim config files..."
	cp home/.vimrc ~/.vimrc
	cp -r home/.vim ~/.vim/
}

save_vim () {
	echo "Saving vim config files..."
	cp ~/.vimrc home/.vimrc
	cp -r ~/.vim/ home/.vim
	rm -rf home/.vim/plugged
}

list_configs () {
	echo "(1) vim"
}

load () {
	echo "What to load?"
	list_configs
	read config
	if [ "$config" == "1" ]; then
		load_vim	
	fi	
}

save () {
	echo "What to save?"
	list_configs
	read config
	if [ "$config" == "1" ]; then
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

