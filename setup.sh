#! /bin/bash

cwd=`dirname "${0}"`
expr "${0}" : "/.*" > /dev/null || cwd=`(cd "${cwd}" && pwd)`

# echo $cwd

ln -sf $cwd/.vimrc ~/.vimrc
ln -sf $cwd/.gvimrc ~/.gvimrc

