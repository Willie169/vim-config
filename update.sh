#!/usr/bin/env bash

set -e
cwd="$(pwd)"
cd ~/.vim_runtime
git reset --hard
git pull --rebase
git clean -fd
cd ~/.vim_runtime/pack/my-plugins/start
for repo in fcitx.vim termux-clipboard vim-wayland-clipboard; do
	cd ~/.vim_runtime/pack/my-plugins/start/"$repo"
	git reset --hard
	git pull --rebase
	git clean -fd
done
ln -sf "${HOME}"/.vim_runtime/vimrc "${HOME}"/.vimrc
# shellcheck disable=2164
cd "$cwd"
echo "Updated successfully!"
