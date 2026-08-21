#!/usr/bin/env bash

set -e
cwd="$(pwd)"
cd ~/.vim_runtime || exit
git reset --hard
git pull --rebase
git clean -fd
cd ~/.vim_runtime/pack/my-plugins/start
for repo in *; do
  # shellcheck disable=2015
  test -d "$repo" && cd ~/.vim_runtime/pack/my-plugins/start/"$repo" || continue
  git reset --hard
  git pull --rebase
  git clean -fd
done
ln -sf "${HOME}"/.vim_runtime/vimrc "${HOME}"/.vimrc
# shellcheck disable=2164
cd "$cwd"
echo "Updated successfully!"
