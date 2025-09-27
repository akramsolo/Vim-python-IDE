#!/bin/bash

echo "=== Updating Termux ==="
pkg update -y && pkg upgrade -y

echo "=== Installing essential tools ==="
pkg install -y vim python nodejs git curl nano

echo "=== Ensuring pip and virtualenv are installed ==="
python -m pip install --upgrade pip virtualenv

echo "=== Creating vim-plug directory if not exists ==="
mkdir -p ~/.vim/autoload

echo "=== Installing vim-plug ==="
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "=== Creating .vimrc optimized for Python IDE ==="
cat > ~/.vimrc <<'EOF'
set nocompatible
syntax on
set termguicolors
set background=dark
set lazyredraw
set ttyfast
set t_ut=""

call plug#begin('~/.vim/plugged')

" Writing & Navigation
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'

" Python IDE
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'

" Writing improvements
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'

" Snippet support
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'

" Visual enhancements
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'

call plug#end()

" Colorscheme
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection = 0
let g:gruvbox_improved_strings = 1
colorscheme gruvbox
hi CursorLine cterm=NONE ctermbg=236 guibg=#3c3836

" General settings
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set cursorline

" NERDTree Shortcut
nnoremap <C-n> :NERDTreeToggle<CR>

" Coc.nvim Settings
inoremap <silent><expr> <C-Space> coc#refresh()
nnoremap <silent> gd <Plug>(coc-definition)
nnoremap <silent> K :call CocActionAsync('doHover')<CR>
xnoremap <silent> <leader>f <Plug>(coc-format-selected)
nnoremap <silent> <leader>f <Plug>(coc-format-selected)

" Snippet navigation
let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<s-tab>'

" ALE Linter/Fixer
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1

" Extra shortcuts
nnoremap <leader>o :e#<CR>
nnoremap <leader>r :source $MYVIMRC<CR>

" Quick file buffer switching
nnoremap <leader><tab> :bnext<CR>
nnoremap <leader><s-tab> :bprevious<CR>

" Terminal inside Vim
nnoremap <leader>t :term<CR>

" Auto close NERDTree when opening file
autocmd BufEnter * if bufname("#") =~ "NERD_tree" | wincmd p | endif
EOF

echo "=== Installing all Vim Plugins ==="
vim +'PlugInstall --sync' +qa

echo "=== Installing coc-pyright for Python autocomplete ==="
vim +'CocInstall -sync coc-pyright --y' +qa

echo "=== Setup complete! Open Vim and enjoy a full Python IDE! ==="
echo "Example: vim myscript.py"
