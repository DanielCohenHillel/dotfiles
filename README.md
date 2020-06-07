# Linux Config 💾
This is my linux config. I keep my dot files for various linux applications in here, I use this to easily setup new linux 
installations the way I like quickly. If you're looking at this repository there's something wrong with you, it a mess. Over
time I started put in here random pieces of code I created when I was bored since it was the quickest way for me to move the
code from one computer to another, yet another reason why you shouldn't be here.

## vim ☕
These are my vim/neovim config. For more information about the neovim config you can check out [this](https://github.com/ChristianChiarulli/nvim).

**Important:** For neovim to work correctly with the coc-intellisense you need to run `:CocInstall coc-json coc-python coc-snippets coc-vimlsp coc-explorer coc-clangd`. Also make sure to install the right version of everything (especially `jedi`). Run 
`conda install -c conda-forge jedi neovim autopep8 pynvim` and `conda install -c anaconda pylint`

## WM - Window Managers ✊
I mainly use bspwm now days. My `sxhkd` config is in the 'bspwm' folder alltough it is possible to use it with i3.

To make compton run properly on arch, use [compton by tryone144](https://github.com/tryone144/compton) instead of the package in pacman.

## Commands
Some commands to run so I can setup fast.
* Fish:
    * Install [fish](https://fishshell.com/)
    * [Make fish the default shell](https://wiki.archlinux.org/index.php/Command-line_shell) -> `chsh -l` to list all installed shell and then `chsh -s path-to-fish` to make default.
    * Install [OMF](https://github.com/oh-my-fish/oh-my-fish) -> `curl -L https://get.oh-my.fish | fish`
    * To show conda enviroment (this should be set `False` when using zsh!) conda config --set changeps1 True
* Git: 
   * Cache credentials: `git config credential.helper cache`
   * Don't forget to copy .gitconfig to home (`cp .gitconfig ~/`)
* NerdFonts: `git clone https://github.com/ryanoasis/nerd-fonts` and run install script `./install.sh` to install all fonts.

**Important:** To use my alacritty configuration (alacritty) you need the latest version of
alacritty from the git repo. Download ([alacritty-git](https://aur.archlinux.org/packages/alacritty-git/)). 
If you don't want to use the unstable git version, you can simply remove all the vi-mode related
key bindings.
