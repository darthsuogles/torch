#!/bin/bash

pkg=torch
ver=7-dev
install_dir=$PWD/install

source $HOME/local/src/gen_modules.sh

print_header $pkg $ver
print_modline "prepend-path PATH $install_dir/bin"
print_modline "prepend-path CPATH $install_dir/include"
print_modline "prepend-path LIBRARY_PATH $install_dir/lib"
print_modline "prepend-path LD_LIBRARY_PATH $install_dir/lib"

