## vim-config

My configuration for Vim 8.0 or later, which is derived from [my fork](https://github.com/Willie169/vimrc) of [amix's vimrc](https://github.com/amix/vimrc) with the number of plugins decreased and Vim native package manager used.

### Installation

```
git clone --recurse-submodules --depth=1 https://github.com/Willie169/vim-config.git ~/.vim_runtime
sh ~/.vim_runtime/install.sh
```

### Update

```
cd ~/.vim_runtime
git reset --hard
git submodule deinit --all --force
git pull --rebase
git submodule sync --recursive
git submodule update --init --remote --recursive
git clean -fd
```

### Customization

After you have installed the setup, put your customization in `~/.vim_runtime/my_configs.vim` and plugins in `~/vim_runtime/pack/my-plugins/start/`.

### Included Plugins

* [fcitx.vim](https://github.com/lilydjwg/fcitx.vim): Keep and restore fcitx state for each buffer separately when leaving/re-entering insert mode or search mode
* [termux-clipboard](https://github.com/Willie169/termux-clipboard): Integrate Vim '+' register with the Android system clipboard via Termux APIs
* [vim-wayland-clipboard](https://github.com/jasonccox/vim-wayland-clipboard): Integrate Vim's '+' register with the Wayland system clipboard

### Neovim

Refer to my [nvim-config](https://github.com/Willie169/nvim-config) repo for my Neovim configuration.

