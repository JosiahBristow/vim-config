" Initialize plugin system
call plug#begin('~/.vim/plugged')

" Enhanced matching for brackets, tags, etc.
Plug 'andymass/vim-matchup'

" Open terminal in vim
Plug 'kassio/neoterm'

" Code completion and LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Status line customization
Plug 'itchyny/lightline.vim'

" Rainbow parentheses
Plug 'frazrepo/vim-rainbow'

" File tree explorer
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}

" Git integration
Plug 'tpope/vim-fugitive', {'for': 'gitcommit'}

" Quick commenting
Plug 'preservim/nerdcommenter'

" TokyoNight color scheme
Plug 'ghifarit53/tokyonight-vim'

" Tagbar
Plug 'preservim/tagbar', {'on': 'TagbarToggle'}

" Indentation guides
Plug 'Yggdroot/indentLine'

" Start page
Plug 'mhinz/vim-startify'

" Quick navigation
Plug 'easymotion/vim-easymotion'

" Fuzzy finder
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}

" FZF integration
Plug 'junegunn/fzf.vim'

" Function finder
Plug 'tracyone/fzf-funky',{'on': 'FzfFunky'}

" GitHub Copilot
Plug 'github/copilot.vim'

" End plugin initialization
call plug#end()
