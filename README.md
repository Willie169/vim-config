## vim-config

My configuration for Vim 8.0 or later, which is derived from [my fork](https://github.com/Willie169/vimrc) of [amix's vimrc](https://github.com/amix/vimrc) with the number of plugins decreased and Vim native package manager used.

### Installation

Bakcup your configurations first.
```
curl -fsSL https://raw.githubusercontent.com/Willie169/vim-config/refs/heads/main/install.sh | sh
```

### Update

```
sh ~/.vim_runtime/update.sh
```

### Customization

After you have installed the setup, put your customization in `~/.vim_runtime/my_configs.vim` and plugins in `~/vim_runtime/pack/my-plugins/start/`.

### Included Plugins

* [termux-clipboard](https://github.com/Willie169/termux-clipboard)
* [vim-wayland-clipboard](https://github.com/jasonccox/vim-wayland-clipboard)

### Neovim

Refer to my [nvim-config](https://github.com/Willie169/nvim-config) repo for my Neovim configuration.

