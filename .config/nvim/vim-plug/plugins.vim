" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

    " File Explorer
    Plug 'scrooloose/NERDTree'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'machakann/vim-sandwich'

    " Add matching parentheses, tags, and such ..
    Plug 'tpope/vim-surround'

    " Fuzzy search
    Plug 'ctrlpvim/ctrlp.vim'

    " Airline
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Automatické komentáře
    Plug 'preservim/nerdcommenter'

    " Fuzzy-search vyhledávání
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

call plug#end()
