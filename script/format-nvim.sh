#!/bin/bash
pushd .
cd ~/.config/nvim ||exit
stylua lua/*.lua
stylua after/*/*.lua
stylua lua/*/*.lua
popd ||exit
