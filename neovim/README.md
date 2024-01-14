# DevActivity's dotfiles

## Neovim setup for Rust

Konfigurasi ini menggunakan `Lazy.nvim` sebagai _plugins manager_. Silahkan kunjungi halaman [dokumentasi Lazy.nvim](https://github.com/folke/lazy.nvim) untuk informasi dan cara kerjanya.

Sebagai tambahan, silahkan install beberapa `package` pendukung berikut ini di sistem OS Anda: `git, fzf, and ripgrep`. Perlu diingat bahwa nama `package` tersebut mungkin berbeda dibeberapa Distro Linux, jadi pastikan nama `package` tersebut sesuai dengan Distro Linux yang Anda gunakan.

Untuk _language server_ yang digunakan dalam konkfigurasi ini adalah [neovim-lspconfig](https://github.com/neovim/nvim-lspconfig). Detail lebih lanjut dapat Anda lihat melalui link tersebut.

Gunakan perintah dibawah untuk informasi terkait _plugins_:

- :checkhealth lazy - recommended to run after installation
- :Lazy - to manage Plugins

Dasar mappings:

- n: normal only
- v: visual and select
- o: operator-pending
- x: visual only
- s: select only
- i: insert
- c: command-line
- l: insert, command-line, regexp-search ("Lang-Arg" pseudo-mode)

|  MODE  | SHORTCUTS  | DESCRIPTIONS                         |
| :----: | :--------: | ------------------------------------ |
| normal | comma + N  | toggle line numbers                  |
| normal | comma + ss | to save                              |
| normal | comma + q  | quit without saving                  |
| normal | comma + qa | quit all without saving              |
| normal | comma + Y  | copy to clipboard                    |
| normal | comma + q  | back to normal mode                  |
| insert | comma + jj | back to normal mode                  |
| normal |     tn     | new tab                              |
| normal |     tk     | next tab                             |
| normal |     tj     | previous tab                         |
| normal |     th     | first tab                            |
| normal |     tl     | last tab                             |
| normal |     tc     | close tab                            |
| normal | comma + l  | navigate to the next buffer          |
| normal | comma + h  | navigate to the previous buffer      |
| normal | comma + 0  | navigate to the first buffer         |
| normal | comma + dd | delete current buffer                |
| normal |  Ctrl + k  | navigate to the up split screen      |
| normal |  Ctrl + j  | navigate to the down split screen    |
| normal |  Ctrl + l  | navigate to the left split screen    |
| normal |  Ctrl + h  | navigate to the right split screen   |
| normal | Shift + >> | indent line to the right             |
| normal | Shift + << | indent line to the left              |
| normal | Shift + Y  | yank to the end of line              |
| normal |   Y + p    | Duplicate line (Sublime like Ctrl+d) |
| normal |  Ctrl + z  | toggle sidebar                       |
| normal | comma + ff | find file (fzf)                      |
| insert |    tab     | navigate the completion (down)       |
