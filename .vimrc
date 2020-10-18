" Osobní nastavení, tohle by mělo být pro 'témata' v gvimu - slate vypadá
" nejlépe

colorscheme desert 
set guifont=Ubuntu\ Mono\ 12

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

call plug#begin()

" Airline plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Rainbow Parenthesses plugin
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1

" vim-signature plugin : Použití vlastních záložek
Plug 'https://github.com/kshenoy/vim-signature'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Distraction-free writing ve vimu
" `:Goyo` zapíná, `:Goyo!` vypíná
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }

" Zvýražnování textu pomocí změny jasu fontu; pro některá nastavení může být nutná ruční úprava, návod na GitHubu
" `:Limelight` zapne limelight, volitelně lze připsat číslo [0.0 - 1.0]; `:Limelight!` vypne limelight
Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }

" Cílení na text za objektem - vyžaduje úpravu nastavení pro definování objektů
Plug 'junegunn/vim-after-object'
autocmd VimEnter * call after_object#enable('=', ':', '-', '#', ' ') " za těmito objekty bude vybírat text

" Dim inactive windows, `:DimInactiveWindowOff` vypne funkci pro dané okno, `:DimInactiveWindowOn` funkci zapne. Více příkazů je na stránce projektu
Plug 'https://github.com/blueyed/vim-diminactive', { 'on': 'DimInactiveWindowOn' }
" Když chci plugin používat, stačí použít jeho hlavní funkci na nějaké okno - v tu chvíli se načte

" Zvýrazňování syntaxe markdownu a textu odrážek, je nutné `: set filetype=journal:`
Plug 'junegunn/vim-journal'

" <TAB> completion zápisu vyhledávacích příkazů
Plug 'https://github.com/vim-scripts/SearchComplete'

" Plugin NERD Commenter
Plug 'https://github.com/scrooloose/nerdcommenter'

" Indexovaná reference lua přímo ve vimu
Plug 'https://github.com/vim-scripts/luarefvim'

" Matchit - verze pro plugin-managery
Plug 'https://github.com/adelarsq/vim-matchit'

" Surround 
Plug 'https://github.com/tpope/vim-surround'

" Vkládání code snippets, SnipMate, změnil hlavní repositář
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'https://github.com/garbas/vim-snipmate'

" Undo historie
Plug 'https://github.com/sjl/gundo.vim'
Plug 'https://github.com/mbbill/undotree'

" Více kurzorů najednou, help je pomocí `:help visual-multi`
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Souštění REPLu přes Screen nebo tmux z textu ve vimu
Plug 'https://github.com/jpalardy/vim-slime'

" Požadavky, aby plugin wimWiki fungoval - `nocompatible` se nastavuje vždy,
" ostatní kdoví ... Zajímavý plugin pro psaní, trochu podobný org-mode v Emacs

set nocompatible
filetype plugin on
syntax on

Plug 'vimwiki/vimwiki'

" Zvýrazňovač barev (? v CSS?) - podporuje velké množství syntaxe
Plug 'https://github.com/ap/vim-css-color'

" File manager ve vimu
Plug 'vifm/vifm.vim'

" Vyhledávání souborů pomocí `fzf`
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()
