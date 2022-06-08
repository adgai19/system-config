#!/bin/bash
sudo apt update
sudo apt upgrade -y
pushd .
cd ~/github/neovim || exit
git pull
make -j8
sudo make install
popd || exit

