
---

Termux Vim Python IDE

Turn Vim inside Termux into a lightweight Python IDE with a single script.

Repository: https://github.com/akramsolo/Vim-python-IDE
Author: akramsolo


---

Overview

This repository provides a Bash script (setup-Vim-python-IDE.sh) that automates the setup of a Python development environment inside Termux (Android).

The script will:

Update Termux packages.

Install essential tools: vim, python, nodejs, git, curl, nano.

Upgrade pip and install virtualenv.

Install vim-plug and configure a ready-to-use ~/.vimrc.

Install popular Vim plugins: NERDTree, fzf, coc.nvim, ale, UltiSnips, gruvbox, etc.

Set up Python autocomplete with coc-pyright.


⚠️ Note: Designed for Termux on Android. May work on other Linux systems but not guaranteed.


---

Features

Termux update & upgrade

Core package installation

Python tooling (pip, virtualenv)

Automatic vim-plug setup & plugin installation

Prebuilt .vimrc optimized for Python development

Backup of existing .vimrc if present



---

Installation (Preferred Method)

1. Create the script:



nano setup-Vim-python-IDE.sh

Paste the full script content

Save (Ctrl + O) and exit (Ctrl + X)


2. Make it executable:



chmod +x setup-Vim-python-IDE.sh

3. Run the script:



./setup-Vim-python-IDE.sh

> Alternatively, you can run bash setup-Vim-python-IDE.sh, but ./ is preferred after making it executable.



4. Start coding:



vim myscript.py


---

Useful Vim Shortcuts (from .vimrc)

Shortcut	Action

Ctrl + n	Toggle NERDTree
gd	Go to definition (coc.nvim)
K	Show hover/info (coc.nvim)
<Leader>f	Format selection (coc.nvim)
<Leader>t	Open terminal inside Vim


Restore previous Vim configuration:

cp ~/.vimrc.backup ~/.vimrc


---

Troubleshooting

If plugin installation fails, open Vim and run :PlugInstall.

If coc.nvim or coc-pyright fails, ensure Node.js is installed and the device has internet access.

Ensure the script is in the current directory and has execute permission (chmod +x).

To revert .vimrc, use the backup command above.



---

Contributing

Issues, bug reports, and pull requests are welcome.

Suggested labels: bug, enhancement, documentation, help wanted.



---

Credits

Thanks to the maintainers of the following open-source tools:

Vim

vim-plug (junegunn)

coc.nvim & coc-pyright / pyright

fzf

gruvbox and other plugin authors
