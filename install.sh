#!/bin/sh

for f in .[A-z]*; do
    if [ $f != ".git" ]
    then
	rm -f ../$f
	ln -s ./myrcfiles/$f $HOME/$f
    fi
done

