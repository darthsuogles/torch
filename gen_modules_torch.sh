#!/bin/bash

pkg=torch
#ver=7-dev
ver=7-stable
if [ "$ver" == "7-dev" ]; then
    install_dir=$PWD/install
else
    install_dir=$PWD/install-stable
fi

source $PWD/scripts/gen_modules.sh

print_header $pkg $ver
print_modline "prepend-path PATH $install_dir/bin"
print_modline "prepend-path CPATH $install_dir/include"
print_modline "prepend-path LIBRARY_PATH $install_dir/lib"
print_modline "prepend-path LD_LIBRARY_PATH $install_dir/lib"

