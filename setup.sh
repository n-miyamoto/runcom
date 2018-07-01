#!/bin/sh

if [ ! -n "$HOME" ]; then
	echo "HOME is undefined"
	echo $HOME
	exit 1
fi

#Copy all rc files to home directory.
for file in `\find . -name '*rc' ` ; do
	echo $file "$HOME"
	cp $file "$HOME"
done

#Copy all .conf files to home directory.
for file in `\find . -name '*conf' ` ; do
	echo $file "$HOME"
	cp $file "$HOME"
done


exit 0
