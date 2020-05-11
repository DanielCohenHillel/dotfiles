# Linux Config 💾
This is my linux config. I keep my dot files for various linux applications in here, I use this to easily setup new linux 
installations the way I like quickly. If you're looking at this repository there's something wrong with you, it a mess. Over
time I started put in here random pieces of code I created when I was bored since it was the quickest way for me to move the
code from one computer to another, yet another reason why you shouldn't be here.

## vim ☕
These are my vim/neovim config. For more information about the neovim config you can check out [this](https://github.com/ChristianChiarulli/nvim).

**Important:** For neovim to work correctly with the coc-intellisense you need to run `:CocInstall coc-json coc-python coc-snippets coc-vimlsp coc-explorer`. Also make sure to install the right version of everything (especially `jedi`). Run 
`conda install -c conda-forge jedi neovim autopep8` and `conda install -c anaconda pylint`

## WM - Window Managers ✊
I mainly use bspwm now days. My `sxhkd` config is in the 'bspwm' folder alltough it is possible to use it with i3. 
