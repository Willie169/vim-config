#!/usr/bin/env bash

dir="$(cd -- "$(dirname -- "$0")" && pwd)"
for f in "$dir"/*.sh; do
	chmod +x "$f"
	shfmt -w "$f"
	shellcheck "$f"
done
nvim --headless "$dir/basic.vim" -c 'normal! gg=G' -c 'wq'
echo -e '\n'
nvim --headless "$dir/vimrc" -c 'normal! gg=G' -c 'wq'
echo -e '\n'
