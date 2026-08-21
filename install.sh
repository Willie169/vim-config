#!/usr/bin/env bash

set -e
rm -rf ~/.vim_runtime || true
git clone --depth=1 https://github.com/Willie169/vim-config.git ~/.vim_runtime
cd ~/.vim_runtime/pack/my-plugins/start
git clone --depth=1 https://github.com/Willie169/termux-clipboard.git
git clone --depth=1 https://github.com/jasonccox/vim-wayland-clipboard.git
ln -sf "${HOME}"/.vim_runtime/vimrc "${HOME}"/.vimrc
echo "Installed successfully!"
