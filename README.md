# Termux Vim Python IDE Setup

This script transforms **Vim inside Termux** into a lightweight **Python IDE** with essential plugins, autocompletion, linters, and a visually appealing interface.

---

## Features

* **Python IDE ready** with autocompletion using `coc.nvim` + `coc-pyright`
* Syntax highlighting and linting via `ALE`
* File navigation with `NERDTree` and `fzf`
* Code snippets with `UltiSnips` and `vim-snippets`
* Writing enhancements: auto-pairs, commentary, surround
* Visual improvements: Gruvbox colorscheme, indent guides, rainbow brackets
* Terminal integration inside Vim
* Handy keybindings for faster navigation and editing

---

## Requirements

* **Termux** installed on your Android device
* Internet connection for downloading packages and plugins

---

## Installation Steps

1. **Open Termux**.

2. **Create the installation script** using `nano`:

```bash
nano setup_vim_python.sh
```

3. **Paste the script** into `nano` (copy everything from your script above).

4. **Save and exit**:

* Press `CTRL+O` → Enter (to save)
* Press `CTRL+X` (to exit nano)

5. **Make the script executable**:

```bash
chmod +x setup_vim_python.sh
```

6. **Run the script**:

```bash
./setup_vim_python.sh
```

The script will:

* Update Termux packages
* Install essential tools: `vim`, `python`, `nodejs`, `git`, `curl`, `nano`
* Set up `vim-plug` plugin manager
* Configure Vim for Python development
* Install all Vim plugins automatically
* Install `coc-pyright` for Python autocompletion

---

## Usage

Open a Python file in Vim:

```bash
vim myscript.py
```

### Useful Shortcuts

| Shortcut                | Action                             |
| ----------------------- | ---------------------------------- |
| `Ctrl+n`                | Toggle NERDTree file explorer      |
| `<leader>f`             | Format selection / file            |
| `<leader>t`             | Open terminal inside Vim           |
| `gd`                    | Go to definition (coc.nvim)        |
| `K`                     | Hover for documentation (coc.nvim) |
| `<Tab>` / `<Shift+Tab>` | Navigate snippets                  |

> Note: `<leader>` is mapped to `\` by default in Vim.

---

## Contributing

Feel free to fork the script, improve `.vimrc` settings, or add more plugins. Pull requests are welcome!

---

## License

MIT License
