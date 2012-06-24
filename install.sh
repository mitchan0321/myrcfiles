#!/bin/sh

for f in .[A-z]*; do
	rm -f ../$f
	ln -s ./rcfiles/$f $HOME/$f
done

