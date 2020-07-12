# Linux Config 💾

This is my linux config. I keep my dot files for various linux applications in
here, I use this to easily setup new linux installations the way I like quickly.
If you're looking at this repository there's something wrong with you, it a mess.
Over time I started put in here random pieces of code I created when I was bored
since it was the quickest way for me to move the code from one computer to
another, yet another reason why you shouldn't be here.

## vim ☕

These are my vim/neovim config. For more information about the neovim config you
can check out [this](https://github.com/ChristianChiarulli/nvim).

**Important:** For neovim to work correctly with the coc correctly, run
`:CocInstall coc-json coc-python coc-snippets coc-vimlsp coc-explorer coc-clangd`.
Also make sure to install the right version of everything (especially `jedi`).
Run `conda install -c conda-forge jedi neovim autopep8 pynvim` and
`conda install -c anaconda pylint`

## WM - Window Managers ✊

I mainly use bspwm now days. My `sxhkd` config is in the 'bspwm' folder
although it is possible to use it with i3.

To make compton run properly on arch, use [compton by tryone144](https://github.com/tryone144/compton)
instead of the package in pacman.

## Commands

Some commands to run so I can setup fast.

* **Fish:**
  * Install [fish](https://fishshell.com/)
  * [Make fish default](wiki.archlinux.org/index.php/Command-line_shell) ->
      `chsh -l` to list all shells and then `chsh -s path-to-fish` to make default.
  * Install [OMF](https://github.com/oh-my-fish/oh-my-fish) ->
      `curl -L https://get.oh-my.fish | fish`
  * To show conda environment (this should be set `False` when using ZSH!)
      `conda config --set changeps1 True`
* **Git:**
  * Cache credentials: `git config credential.helper cache`
  * Don't forget to copy `.gitconfig` to home (`cp .gitconfig ~/`)
* **NerdFonts:** `git clone https://github.com/ryanoasis/nerd-fonts` and run
    install script `./install.sh` to install all fonts.
* **Markdown preview:** Need to install some package for
    [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
    to work. `npm i tslib neovim log4js socket.io msgpack-lite`

**Important:** Some of the packages won't work in the stable version and you
need the newer git versions. These are:

* [alacritty-git](https://aur.archlinux.org/packages/alacritty-git/).
   If you don't want to use the unstable git version, you can simply remove all
   the vi-mode related key bindings.
* [zathura-git](https://aur.archlinux.org/packages/zathura-git/).
    *Note:* Don't forget to install `zathura-pdf-mupdf` (not git version)

## Packages to install

Some packages that are needed for everything to work that I probably forgot to install

* Official
  * nvidia
  * xclip
  * nodejs
  * feh
  * mpd
  * man and man-db
  * arc-gtk-theme
* AUR
  * autotiling
  * zathura-git
  * zathura-pdf-mupdf

