# DevActivity's dotfiles

## Neovim setup for Rust

Konfigurasi ini menggunakan `Lazy.nvim` sebagai _plugins manager_. Silahkan kunjungi halaman [dokumentasi Lazy.nvim](https://github.com/folke/lazy.nvim) untuk informasi dan cara kerjanya.

Sebagai tambahan, silahkan install beberapa `package` pendukung berikut ini di sistem OS Anda: `git, fzf, fd, lldb and ripgrep`. Perlu diingat bahwa nama `package` tersebut mungkin berbeda dibeberapa Distro Linux, jadi pastikan nama `package` tersebut sesuai dengan Distro Linux yang Anda gunakan.

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

Koma ( `,` ) adalah `leader`, silahkan tekan koma saat buka Neovim untuk mlihat _shortcut keys_ yang sudah dikonfigurasi.

